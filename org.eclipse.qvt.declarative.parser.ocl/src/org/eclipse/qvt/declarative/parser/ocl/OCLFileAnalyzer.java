/**
 * <copyright>
 * 
 * Copyright (c) 2007,2008 E.D.Willink and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 * E.D.Willink - initial API and implementation
 * 
 * </copyright>
 *
 * $Id: OCLFileAnalyzer.java,v 1.8 2010/01/05 11:41:35 ewillink Exp $
 */
package org.eclipse.qvt.declarative.parser.ocl;

import java.util.ArrayList;
import java.util.List;

import lpg.runtime.Monitor;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EEnumLiteral;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EParameter;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.ocl.Environment;
import org.eclipse.ocl.cst.PackageDeclarationCS;
import org.eclipse.ocl.cst.SimpleNameCS;
import org.eclipse.ocl.ecore.CallOperationAction;
import org.eclipse.ocl.ecore.Constraint;
import org.eclipse.ocl.ecore.SendSignalAction;
import org.eclipse.ocl.lpg.AbstractLexer;
import org.eclipse.ocl.parser.OCLAnalyzer;
import org.eclipse.ocl.parser.backtracking.OCLBacktrackingLexer;
import org.eclipse.ocl.parser.backtracking.OCLBacktrackingParser;
import org.eclipse.qvt.declarative.parser.environment.ICSTFileAnalyzer;
import org.eclipse.qvt.declarative.parser.ocl.environment.OCLFileEnvironment;
import org.eclipse.qvt.declarative.parser.ocl.environment.OCLTopLevelEnvironment;

public final class OCLFileAnalyzer extends
		OCLAnalyzer<EPackage, EClassifier, EOperation, EStructuralFeature, 
		EEnumLiteral, EParameter, EObject, CallOperationAction, SendSignalAction, Constraint, EClass, EObject> implements ICSTFileAnalyzer<OCLTopLevelEnvironment>
{
	private Monitor monitor;
	private OCLTopLevelEnvironment topLevelEnvironment = null;
	private EClass iteratorsClass = null;

	public OCLFileAnalyzer(OCLFileEnvironment environment, Monitor monitor) {
		super(new OCLBacktrackingParser(new OCLBacktrackingLexer(environment)));
		this.monitor = monitor;
	}

	public boolean analyze(OCLTopLevelEnvironment environment) {
		this.topLevelEnvironment = environment;
		List<Constraint> constraints = new ArrayList<Constraint>();
		for (PackageDeclarationCS pkgdecl : environment.getCSTNode().getPackageDeclarations())
			packageDeclarationCS(pkgdecl, constraints);
		if (!constraints.isEmpty())
			environment.getASTNode().getContents().addAll(constraints);
		return true;
	}

	@Override
	protected Object createDummyPackage(
			Environment<EPackage, EClassifier, EOperation, EStructuralFeature, EEnumLiteral, EParameter, EObject, CallOperationAction, SendSignalAction, Constraint, EClass, EObject> env,
			PackageDeclarationCS packageDeclarationCS) {
		return EcoreFactory.eINSTANCE.createEPackage();
	}

    @Override
	public AbstractLexer getLexer() {
    	return getAbstractParser().getLexer();
    }

	@Override
	public Environment<EPackage, EClassifier, EOperation, EStructuralFeature, EEnumLiteral, EParameter, EObject, CallOperationAction, SendSignalAction, Constraint, EClass, EObject> getOCLEnvironment() {
		return topLevelEnvironment != null ? topLevelEnvironment : super.getOCLEnvironment();
	}

	@Override
	protected void resolveIteratorOperation(SimpleNameCS simpleNameCS,
			Environment<EPackage, EClassifier, EOperation, EStructuralFeature, EEnumLiteral, EParameter, EObject, CallOperationAction, SendSignalAction, Constraint, EClass, EObject> env) {
		if (iteratorsClass == null) {
			EPackage iteratorsPackage = EcoreFactory.eINSTANCE.createEPackage();
			iteratorsPackage.setName("iterators");
			iteratorsClass = EcoreFactory.eINSTANCE.createEClass();
			iteratorsClass.setName("Iterators");
			iteratorsPackage.getEClassifiers().add(iteratorsClass);
		}
		EOperation oper = EcoreFactory.eINSTANCE.createEOperation();
		oper.setName(simpleNameCS.getValue());
		iteratorsClass.getEOperations().add(oper);
		simpleNameCS.setAst(oper);
	}

	protected boolean isCancelled() {
		return monitor != null ? monitor.isCancelled() : false;
	}
}