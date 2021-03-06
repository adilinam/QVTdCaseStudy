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
package configuration.businessconfiguration;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see configuration.businessconfiguration.BusinessconfigurationPackage
 * @generated
 */
public interface BusinessconfigurationFactory extends EFactory {
	/**
	 * The singleton instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	BusinessconfigurationFactory eINSTANCE = configuration.businessconfiguration.impl.BusinessconfigurationFactoryImpl.init();

	/**
	 * Returns a new object of class '<em>Scoping Context</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Scoping Context</em>'.
	 * @generated
	 */
	ScopingContext createScopingContext();

	/**
	 * Returns a new object of class '<em>Industry</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Industry</em>'.
	 * @generated
	 */
	Industry createIndustry();

	/**
	 * Returns a new object of class '<em>Country</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Country</em>'.
	 * @generated
	 */
	Country createCountry();

	/**
	 * Returns a new object of class '<em>Configuration Element</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Configuration Element</em>'.
	 * @generated
	 */
	ConfigurationElement createConfigurationElement();

	/**
	 * Returns a new object of class '<em>Business Topic</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Business Topic</em>'.
	 * @generated
	 */
	BusinessTopic createBusinessTopic();

	/**
	 * Returns a new object of class '<em>Business Package</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Business Package</em>'.
	 * @generated
	 */
	BusinessPackage createBusinessPackage();

	/**
	 * Returns a new object of class '<em>Business Option</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Business Option</em>'.
	 * @generated
	 */
	BusinessOption createBusinessOption();

	/**
	 * Returns a new object of class '<em>Business Area</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Business Area</em>'.
	 * @generated
	 */
	BusinessArea createBusinessArea();

	/**
	 * Returns a new object of class '<em>Value Set</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Value Set</em>'.
	 * @generated
	 */
	ValueSet createValueSet();

	/**
	 * Returns a new object of class '<em>Value Set Entry</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Value Set Entry</em>'.
	 * @generated
	 */
	ValueSetEntry createValueSetEntry();

	/**
	 * Returns the package supported by this factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the package supported by this factory.
	 * @generated
	 */
	BusinessconfigurationPackage getBusinessconfigurationPackage();

} //BusinessconfigurationFactory
