/*******************************************************************************
 * Copyright (c) 2009, 2014 SAP AG and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *     SAP AG - initial API and implementation
 ******************************************************************************
 */
package data.generics;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see data.generics.GenericsPackage
 * @generated
 */
public interface GenericsFactory extends EFactory {
	/**
	 * The singleton instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	GenericsFactory eINSTANCE = data.generics.impl.GenericsFactoryImpl.init();

	/**
	 * Returns a new object of class '<em>Formal Type Parameter</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Formal Type Parameter</em>'.
	 * @generated
	 */
	FormalTypeParameter createFormalTypeParameter();

	/**
	 * Returns a new object of class '<em>Parameterized Class Instantiation</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Parameterized Class Instantiation</em>'.
	 * @generated
	 */
	ParameterizedClassInstantiation createParameterizedClassInstantiation();

	/**
	 * Returns a new object of class '<em>Class Parameterization</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Class Parameterization</em>'.
	 * @generated
	 */
	ClassParameterization createClassParameterization();

	/**
	 * Returns a new object of class '<em>Actual Type Parameter</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Actual Type Parameter</em>'.
	 * @generated
	 */
	ActualTypeParameter createActualTypeParameter();

	/**
	 * Returns the package supported by this factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the package supported by this factory.
	 * @generated
	 */
	GenericsPackage getGenericsPackage();

} //GenericsFactory
