/**
 * <copyright>
 * 
 * Copyright (c) 2007, 2008 E.D.Willink and others.
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
 * $Id: QVTRelationFactory.java,v 1.2 2008/09/09 21:00:53 ewillink Exp $
 */
package org.eclipse.qvt.declarative.ecore.QVTRelation;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see org.eclipse.qvt.declarative.ecore.QVTRelation.QVTRelationPackage
 * @generated
 */
public interface QVTRelationFactory extends EFactory {
	/**
	 * The singleton instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	QVTRelationFactory eINSTANCE = org.eclipse.qvt.declarative.ecore.QVTRelation.impl.QVTRelationFactoryImpl.init();

	/**
	 * Returns a new object of class '<em>Domain Pattern</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Domain Pattern</em>'.
	 * @generated
	 */
	DomainPattern createDomainPattern();

	/**
	 * Returns a new object of class '<em>Key</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Key</em>'.
	 * @generated
	 */
	Key createKey();

	/**
	 * Returns a new object of class '<em>Opposite Property Call Exp</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Opposite Property Call Exp</em>'.
	 * @generated
	 */
	OppositePropertyCallExp createOppositePropertyCallExp();

	/**
	 * Returns a new object of class '<em>Relation</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Relation</em>'.
	 * @generated
	 */
	Relation createRelation();

	/**
	 * Returns a new object of class '<em>Relation Domain</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Relation Domain</em>'.
	 * @generated
	 */
	RelationDomain createRelationDomain();

	/**
	 * Returns a new object of class '<em>Relation Domain Assignment</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Relation Domain Assignment</em>'.
	 * @generated
	 */
	RelationDomainAssignment createRelationDomainAssignment();

	/**
	 * Returns a new object of class '<em>Relation Implementation</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Relation Implementation</em>'.
	 * @generated
	 */
	RelationImplementation createRelationImplementation();

	/**
	 * Returns a new object of class '<em>Relation Call Exp</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Relation Call Exp</em>'.
	 * @generated
	 */
	RelationCallExp createRelationCallExp();

	/**
	 * Returns a new object of class '<em>Relational Transformation</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Relational Transformation</em>'.
	 * @generated
	 */
	RelationalTransformation createRelationalTransformation();

	/**
	 * Returns the package supported by this factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the package supported by this factory.
	 * @generated
	 */
	QVTRelationPackage getQVTRelationPackage();

} //QVTRelationFactory