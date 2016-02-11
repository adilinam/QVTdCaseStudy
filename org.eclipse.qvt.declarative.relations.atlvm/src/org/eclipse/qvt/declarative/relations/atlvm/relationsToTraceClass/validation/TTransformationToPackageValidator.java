/**
 * <copyright>
 * </copyright>
 *
 * $Id: TTransformationToPackageValidator.java,v 1.1 2009/02/24 17:31:27 qglineur Exp $
 */
package org.eclipse.qvt.declarative.relations.atlvm.relationsToTraceClass.validation;

import org.eclipse.emf.ecore.EPackage;

import org.eclipse.qvt.declarative.ecore.QVTRelation.RelationalTransformation;

/**
 * A sample validator interface for {@link org.eclipse.qvt.declarative.relations.atlvm.relationsToTraceClass.TTransformationToPackage}.
 * This doesn't really do anything, and it's not a real EMF artifact.
 * It was generated by the org.eclipse.emf.examples.generator.validator plug-in to illustrate how EMF's code generator can be extended.
 * This can be disabled with -vmargs -Dorg.eclipse.emf.examples.generator.validator=false.
 */
public interface TTransformationToPackageValidator {
	boolean validate();

	boolean validateRt(RelationalTransformation value);
	boolean validateP(EPackage value);
}
