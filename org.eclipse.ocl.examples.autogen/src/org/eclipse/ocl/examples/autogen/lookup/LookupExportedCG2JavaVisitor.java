package org.eclipse.ocl.examples.autogen.lookup;

import java.util.List;

import org.eclipse.jdt.annotation.NonNull;
import org.eclipse.jdt.annotation.Nullable;
import org.eclipse.ocl.examples.codegen.cgmodel.CGClass;
import org.eclipse.ocl.examples.codegen.cgmodel.CGPackage;
import org.eclipse.ocl.examples.codegen.cgmodel.CGValuedElement;

public class LookupExportedCG2JavaVisitor extends LookupVisitorsCG2JavaVisitor<@NonNull LookupExportedVisitorCodeGenerator> {

	public LookupExportedCG2JavaVisitor(
			@NonNull LookupExportedVisitorCodeGenerator codeGenerator,
			@NonNull CGPackage cgPackage,
			@Nullable List<CGValuedElement> sortedGlobals) {
		super(codeGenerator, cgPackage, sortedGlobals);
	}
	
	@Override
	protected void doInternalVisiting(@NonNull CGClass cgClass) {
		// We we return the context
		js.append("\n");
		js.append("@Override\n");
		js.append("protected ");
		js.appendIsRequired(false);
		js.append(" ");
		js.appendClassReference(context.getVisitorResultClass());
		js.append(" doVisiting(");
		js.appendIsRequired(true);
		js.append(" ");
		js.appendClassReference(context.getVisitableClass());
		js.append(" visitable) {\n");
		js.pushIndentation(null);
		js.append("return context;\n");
		js.popIndentation();
		js.append("}\n");
	}
	
	@Override
	protected void doAdditionalConstructorParameters(
			@NonNull CGClass cgClass) {
		js.append(", ");
		js.appendIsRequired(true);
		js.append(" ");
		js.appendClassReference(Object.class);
		js.append(" " + LookupVisitorsClassContext.INMPORTER_NAME);
	}
	
	@Override
	protected void doAdditionalFieldsInitialization(
			@NonNull CGClass cgClass) {
		js.append("this.");
		js.appendReferenceTo(context.getImporterProperty());
		js.append(" = " +  LookupVisitorsClassContext.INMPORTER_NAME + ";\n");
	}
	
	@Override
	protected void doAdditionalSuperLookupVisitorArgs(
			@NonNull CGClass cgClass) {
		js.append(",");
		js.appendReferenceTo(context.getImporterProperty());
	}
	
}
