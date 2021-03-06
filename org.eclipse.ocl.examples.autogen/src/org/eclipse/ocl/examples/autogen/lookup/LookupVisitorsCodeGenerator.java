/*******************************************************************************
 * Copyright (c) 2014, 2015 Willink Transformations and others.
 * All rights reserved.   This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *   E.D.Willink - Initial API and implementation
 *   Adolfo Sanchez-Barbudo Herrera (University of York) - Lookup Environment/Visitor
 *******************************************************************************/
package org.eclipse.ocl.examples.autogen.lookup;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.eclipse.emf.codegen.ecore.genmodel.GenPackage;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.jdt.annotation.NonNull;
import org.eclipse.jdt.annotation.Nullable;
import org.eclipse.ocl.examples.autogen.java.AutoCG2JavaPreVisitor;
import org.eclipse.ocl.examples.autogen.java.AutoVisitorsCodeGenerator;
import org.eclipse.ocl.examples.codegen.analyzer.AS2CGVisitor;
import org.eclipse.ocl.examples.codegen.cgmodel.CGClass;
import org.eclipse.ocl.examples.codegen.cgmodel.CGModel;
import org.eclipse.ocl.examples.codegen.cgmodel.CGModelFactory;
import org.eclipse.ocl.examples.codegen.cgmodel.CGOperation;
import org.eclipse.ocl.examples.codegen.cgmodel.CGPackage;
import org.eclipse.ocl.examples.codegen.cgmodel.CGProperty;
import org.eclipse.ocl.examples.codegen.cgmodel.CGValuedElement;
import org.eclipse.ocl.examples.codegen.cgmodel.CGVariable;
import org.eclipse.ocl.examples.codegen.java.CG2JavaPreVisitor;
import org.eclipse.ocl.examples.codegen.java.JavaConstants;
import org.eclipse.ocl.examples.codegen.library.NativeProperty;
import org.eclipse.ocl.examples.codegen.library.NativeVisitorOperation;
import org.eclipse.ocl.examples.codegen.utilities.RereferencingCopier;
import org.eclipse.ocl.pivot.CompleteClass;
import org.eclipse.ocl.pivot.Element;
import org.eclipse.ocl.pivot.ExpressionInOCL;
import org.eclipse.ocl.pivot.LanguageExpression;
import org.eclipse.ocl.pivot.Model;
import org.eclipse.ocl.pivot.OCLExpression;
import org.eclipse.ocl.pivot.Operation;
import org.eclipse.ocl.pivot.PivotFactory;
import org.eclipse.ocl.pivot.Property;
import org.eclipse.ocl.pivot.Type;
import org.eclipse.ocl.pivot.Variable;
import org.eclipse.ocl.pivot.VariableExp;
import org.eclipse.ocl.pivot.evaluation.Executor;
import org.eclipse.ocl.pivot.ids.IdManager;
import org.eclipse.ocl.pivot.ids.IdResolver;
import org.eclipse.ocl.pivot.ids.OperationId;
import org.eclipse.ocl.pivot.ids.RootPackageId;
import org.eclipse.ocl.pivot.internal.manager.Orphanage;
import org.eclipse.ocl.pivot.internal.utilities.EnvironmentFactoryInternal;
import org.eclipse.ocl.pivot.utilities.ClassUtil;
import org.eclipse.ocl.pivot.utilities.NameUtil;
import org.eclipse.ocl.pivot.utilities.ParserException;
import org.eclipse.ocl.pivot.utilities.PivotUtil;

/**
 * LookupCodeGenerator supports generation of the content of a JavaClassFile for the Lookup visitor.
 */
public abstract class LookupVisitorsCodeGenerator extends AutoVisitorsCodeGenerator
{	
	protected final @NonNull String packageName;
	protected final @NonNull String visitorClassName;

	protected final @NonNull LookupVisitorsClassContext classContext;
	protected final @NonNull AS2CGVisitor as2cgVisitor;
	//
	//	Expected AS elements
	//
	protected final @NonNull Operation asElementEnvOperation;	
	protected final org.eclipse.ocl.pivot.@NonNull Class asEnvironmentType;
	
	//
	//	New AS elements
	//
	protected final org.eclipse.ocl.pivot.@NonNull Class asVisitorClass;
	protected final @NonNull Variable asThisVariable;
	protected final @NonNull Variable asContextVariable;
	protected final @NonNull Property asEvaluatorProperty;
	protected final @NonNull Property asIdResolverProperty;
	
	//
	//	Important CG elements
	//
	private @Nullable CGProperty cgEvaluatorVariable = null;
	private @Nullable CGProperty cgIdResolverVariable = null;
	

	protected LookupVisitorsCodeGenerator(@NonNull EnvironmentFactoryInternal environmentFactory, org.eclipse.ocl.pivot.@NonNull Package asPackage,
			org.eclipse.ocl.pivot.@Nullable Package asSuperPackage, org.eclipse.ocl.pivot.@NonNull Package asBasePackage, @NonNull GenPackage genPackage,
			@Nullable GenPackage superGenPackage, @Nullable GenPackage baseGenPackage) {
		super(environmentFactory, asPackage, asSuperPackage, genPackage, superGenPackage, baseGenPackage);

		this.packageName = getSourcePackageName();
		this.visitorClassName = getLookupVisitorClassName(getProjectPrefix());
	
		this.classContext = new LookupVisitorsClassContext(this, asPackage);
		this.as2cgVisitor = createAS2CGVisitor();
		//
		//	Find expected AS elements
		//
		org.eclipse.ocl.pivot.Class asOclElement = metamodelManager.getStandardLibrary().getOclElementType();
		// org.eclipse.ocl.pivot.Class asOclAny = metamodelManager.getStandardLibrary().getOclAnyType();
		CompleteClass asElementCompleteClass = metamodelManager.getCompletePackage(metamodelManager.getStandardLibrary().getPackage()).getCompleteClass(asOclElement);
		OperationId envOperationId = asOclElement.getTypeId().getOperationId(0, LookupVisitorsClassContext.ENV_NAME, IdManager.getParametersId(asOclElement.getTypeId()));
		this.asElementEnvOperation = ClassUtil.nonNullState(asElementCompleteClass.getOperation(envOperationId));
		this.asEnvironmentType = ClassUtil.nonNullState(asElementEnvOperation.getType().isClass());

		//
		//	Create new AS elements
		//
		org.eclipse.ocl.pivot.Package asVisitorPackage = createASPackage(packageName);
		this.asVisitorClass = createASVisitorClass(asVisitorPackage, visitorClassName);
		this.asThisVariable = PivotUtil.createVariable("this", asVisitorClass, true, null);
		this.asContextVariable = PivotUtil.createVariable(LookupVisitorsClassContext.CONTEXT_NAME, asEnvironmentType, true, null);
		CGVariable cgVariable = as2cgVisitor.getVariable(asContextVariable);
		nameManager.reserveName(LookupVisitorsClassContext.CONTEXT_NAME, cgVariable);
		
		//
		//	Create new AS Visitor helper properties
		//
		this.asEvaluatorProperty = createNativeProperty(JavaConstants.EXECUTOR_NAME, Executor.class, true);
		this.asIdResolverProperty = createNativeProperty(JavaConstants.ID_RESOLVER_NAME, IdResolver.class, true);
		List<Property> asVisitorProperties = asVisitorClass.getOwnedProperties();
		asVisitorProperties.add(asEvaluatorProperty);
		asVisitorProperties.add(asIdResolverProperty);
		asVisitorProperties.addAll(createAdditionalASProperties());

		//
		//	Create new AS Visitor helper operations
		//
		List<Operation> asVisitorOperations = asVisitorClass.getOwnedOperations();
		asVisitorOperations.addAll(createAdditionalASOperations());
	}

	protected org.eclipse.ocl.pivot.@NonNull Package createASPackage(String packaName) {
		String nsURI = "java://"+packageName;		// java: has no significance other than diagnostic readability
		org.eclipse.ocl.pivot.Package asVisitorPackage = PivotUtil.createPackage(packageName, "viz", nsURI, IdManager.getRootPackageId(nsURI));
		Model asVisitorRoot = PivotUtil.createModel(nsURI + ".java");
		asVisitorRoot.getOwnedPackages().add(asVisitorPackage);
		metamodelManager.installRoot(asVisitorRoot);
		return asVisitorPackage;
	}
	
	protected org.eclipse.ocl.pivot.@NonNull Class createASVisitorClass(org.eclipse.ocl.pivot.@NonNull Package asVisitorPackage, @NonNull String className) {
		org.eclipse.ocl.pivot.Class asVisitorClass = PivotUtil.createClass(className);
		asVisitorPackage.getOwnedClasses().add(asVisitorClass);		
		return asVisitorClass;
	}
	
	protected Collection<? extends Operation> createAdditionalASOperations() {
		// By default no additional properties
		return Collections.emptyList();
	}

	protected List<Property> createAdditionalASProperties() {
		// By default no additional properties
		return Collections.emptyList();
	}
	
	/**
	 * Convert the construction context to supertypes/interfaces of cgClass.
	 */
	protected void convertSuperTypes(@NonNull CGClass cgClass) {
		
		String superClassName = "Abstract" + getProjectPrefix() + "CommonLookupVisitor"; // The default Abstract Visitor generated for the language
		CGClass superClass = getExternalClass(getVisitorPackageName(), superClassName, false);
		cgClass.getSuperTypes().add(superClass);
	}

	@Override
	public @NonNull CG2JavaPreVisitor createCG2JavaPreVisitor() {
		return new AutoCG2JavaPreVisitor(classContext);
	}

	/**
	 * Synthesize an AS package by simple AS2AS conversions and convert the AS package to a CG package for onward code generation. 
	 * @throws ParserException 
	 */
	@Override
	protected @NonNull List<CGPackage> createCGPackages() throws ParserException {
		CGModel cgModel = CGModelFactory.eINSTANCE.createCGModel();
		
		String visitorPackage = getSourcePackageName();
		Map<Element,Element> reDefinitions = new HashMap<Element,Element>();
		createCGPackageForVisitor(cgModel, visitorPackage, visitorClassName, asVisitorClass,
			createVisitOperationDeclarations(reDefinitions), reDefinitions);
		List<CGPackage> result = new ArrayList<CGPackage>();
		result.addAll(cgModel.getPackages());
		return result;
	}
	
	protected void createCGPackageForVisitor(@NonNull CGModel cgModel, @NonNull String packageName, @NonNull String classNAme, org.eclipse.ocl.pivot.@NonNull Class asClass, 
			@NonNull Map<Operation, @NonNull Operation> envOperation2asOperation, @NonNull Map<Element,Element> reDefinitions) throws ParserException {
		
		CGPackage cgPackage = CGModelFactory.eINSTANCE.createCGPackage();
		cgPackage.setName(getVisitorPackageName());
		cgModel.getPackages().add(cgPackage);
		CGClass cgClass = CGModelFactory.eINSTANCE.createCGClass();
		cgClass.setName(classNAme);
		cgPackage.getClasses().add(cgClass);
		convertSuperTypes(cgClass);
		convertProperties(cgClass, asClass.getOwnedProperties());
		rewriteVisitOperationBodies(reDefinitions, envOperation2asOperation);
		Collection<Operation> asOperations = envOperation2asOperation.values();
		rewriteOperationCalls(asOperations);
		convertOperations(cgClass, asOperations);
		/*Resource dummyResource = EssentialOCLASResourceFactory.getInstance().createResource(URI.createURI("dummy.essentialocl"));
		dummyResource.getContents().addAll(asOperations);		// PrettyPrinter needs containment*/
	}
	
	/**
	 * Convert the asOperations to cgOperations of cgClass.
	 */
	protected void convertOperations(@NonNull CGClass cgClass, @NonNull Collection<Operation> asOperations) {
		List<Operation> sortedOperations = new ArrayList<Operation>(asOperations);
		Collections.sort(sortedOperations, NameUtil.NAMEABLE_COMPARATOR);
		for (Operation asOperation : sortedOperations) {
			CGOperation cgOperation = as2cgVisitor.doVisit(CGOperation.class, asOperation);
			cgClass.getOperations().add(cgOperation);
		}
	}

	/**
	 * Convert the asProperties to cgProperties of cgClass.
	 */
	protected void convertProperties(@NonNull CGClass cgClass, @NonNull List<Property> asProperties) {
		for (Property asProperty : asProperties) {
			CGProperty cgProperty = as2cgVisitor.doVisit(CGProperty.class, asProperty);
			cgClass.getProperties().add(cgProperty);	
			if (asProperty == asEvaluatorProperty) {
				cgEvaluatorVariable = cgProperty;
			}
			else if (asProperty == asIdResolverProperty) {
				cgIdResolverVariable = cgProperty;
			}
			else { 
				trackCGProperty(asProperty, cgProperty);
			}
		}
	}
	
	/**
	 * Give a chance to derived lookup visitors to track the created CGProperty
	 * 
	 * @param asProperty
	 * @param cgProperty
	 */
	protected void trackCGProperty(Property asProperty, CGProperty cgProperty) {
		// By default do nothing
	}
	
	protected @NonNull Map<Operation, @NonNull Operation> createVisitOperationDeclarations(
			Map<Element, Element> reDefinitions) {
		
		
		Map<Operation, @NonNull Operation> oldOperation2rewrittenOperation = new HashMap<Operation, @NonNull Operation>();
		for (@SuppressWarnings("null")org.eclipse.ocl.pivot.@NonNull Class asType : asPackage.getOwnedClasses()) {
			for (Operation oldOperation : asType.getOwnedOperations()) {
				if (isRewrittenOperation(oldOperation)) {
					Operation asOperation = createVisitOperationDeclaration(reDefinitions, oldOperation);
					oldOperation2rewrittenOperation.put(oldOperation, asOperation);
					reDefinitions.put(oldOperation, asOperation);
				}
			}
		}
		return oldOperation2rewrittenOperation;
	}	
	abstract protected boolean isRewrittenOperation(Operation operation);

	abstract protected @NonNull Operation createVisitOperationDeclaration(Map<Element, Element> reDefinitions, Operation operation);
	
	/**
	 * Helper operation to be used by specific lookup visitor generators
	 * 
	 * @param opName
	 * @param resultType
	 * @return
	 */
	protected @NonNull Operation createVisitorOperation(String opName, Type resultType) {
		Operation asOperation = PivotFactory.eINSTANCE.createOperation();
		asOperation.setName(opName);
		asOperation.setImplementation(NativeVisitorOperation.INSTANCE);
		asOperation.setType(resultType);
		return asOperation;
	}
	


	protected @NonNull Property createNativeProperty(@NonNull String name, @NonNull Type asElementType, boolean isReadOnly) {
		Property asChildProperty = PivotUtil.createProperty(name, asElementType);
		asChildProperty.setImplementation(NativeProperty.INSTANCE);
		asChildProperty.setIsReadOnly(isReadOnly);
		asChildProperty.setIsRequired(isReadOnly);
		return asChildProperty;
	}

	protected @NonNull Property createNativeProperty(@NonNull String name, @NonNull Class<?> javaClass, boolean isReadOnly) {
		Package javaPackage = javaClass.getPackage();
		@SuppressWarnings("null")@NonNull String packageName = javaPackage.getName();
		@SuppressWarnings("null")@NonNull String className = javaClass.getSimpleName();
		RootPackageId javaPackageId = IdManager.getRootPackageId(packageName);
		Orphanage orphanage = metamodelManager.getCompleteModel().getOrphanage();
		org.eclipse.ocl.pivot.Package asPackage = NameUtil.getNameable(orphanage.getOwnedPackages(), packageName);
		if (asPackage == null) {
			asPackage = PivotUtil.createPackage(packageName, packageName, packageName, javaPackageId);
			orphanage.getOwnedPackages().add(asPackage);
		}
		org.eclipse.ocl.pivot.Class asType = NameUtil.getNameable(asPackage.getOwnedClasses(), className);
		if (asType == null) {
			asType = PivotUtil.createClass(className);
			asPackage.getOwnedClasses().add(asType);
		}
		Property asChildProperty = PivotUtil.createProperty(name, asType);
		asChildProperty.setImplementation(NativeProperty.INSTANCE);
		asChildProperty.setIsRequired(isReadOnly);
		asChildProperty.setIsReadOnly(isReadOnly);
		return asChildProperty;
	}
	
	protected @NonNull VariableExp createThisVariableExp(@NonNull Variable thisVariable) {
		return PivotUtil.createVariableExp(thisVariable);
	}
	
	abstract protected @NonNull String getLookupVisitorClassName(@NonNull String prefix);
	
	public @NonNull CGValuedElement getEvaluatorVariable() {
		return ClassUtil.nonNullState(cgEvaluatorVariable);
	}
	
	@Override
	public @NonNull LookupVisitorsClassContext getGlobalContext() {
		return classContext;
	}

	@Override
	public @NonNull CGValuedElement getIdResolverVariable() {
		return ClassUtil.nonNullState(cgIdResolverVariable);
	}	

	protected @NonNull String getSuperLookupVisitorClassName() {
		String superProjectPrefix = ClassUtil.nonNullState(getSuperProjectPrefix());
		String superLangVisitorName = getLookupVisitorClassName(superProjectPrefix);
		return getSuperVisitorPackageName() + "." + superLangVisitorName;
	}

	@Override
	public @NonNull Class<?> getVisitorResultClass() {
		return getEnvironmentClass();
	}
	
	public @NonNull Class<?> getEnvironmentClass() {
		return genModelHelper.getEcoreInterfaceClass(asEnvironmentType);
	}
	
	@Override
	protected @NonNull String getSourcePackageName() {
		return getVisitorPackageName();
	}
	
	protected @NonNull String getSuperSourcePackageName() {
		return getSuperVisitorPackageName();
	}

	/**
	 * Copy all the visitXXX operation bodies from the _env bodies replacing references to redefined parameters.
	 */
	protected void rewriteVisitOperationBodies(@NonNull Map<Element, Element> reDefinitions, @NonNull Map<Operation, @NonNull Operation> envOperation2asOperation) throws ParserException {
		for (@SuppressWarnings("null")@NonNull Operation envOperation : envOperation2asOperation.keySet()) {
			Operation asOperation = envOperation2asOperation.get(envOperation);
			assert asOperation != null;
			LanguageExpression envSpecification = ClassUtil.nonNullState(envOperation.getBodyExpression());
			ExpressionInOCL envExpressionInOCL = metamodelManager.parseSpecification(envSpecification);
			Variable asElement = (Variable) reDefinitions.get(envExpressionInOCL.getOwnedContext());
			OCLExpression asExpression = RereferencingCopier.copy(ClassUtil.nonNullState(envExpressionInOCL.getOwnedBody()), reDefinitions);
			ExpressionInOCL asExpressionInOCL = PivotUtil.createExpressionInOCL(null, asExpression, asElement);
			PivotUtil.initOperation(asOperation, asExpressionInOCL);
			asOperation.setType(asEnvironmentType);
			asOperation.setIsRequired(false);
		}
	}
	
	/**
	 * Replace selected OperationCallExps by alternative implementations
	 * 
	 * Gives a chance to specific lookup visitor to also rewrite operation calls of rewrite operations
	 * 
	 * By default no rewrite takes place
	 */
	protected void rewriteOperationCalls(@NonNull Collection<? extends EObject> allContents) {
		// By default no operation call rewrite takes place
	}
}
