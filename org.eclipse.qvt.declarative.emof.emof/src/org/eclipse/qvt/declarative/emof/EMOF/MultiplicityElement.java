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
 * $Id: MultiplicityElement.java,v 1.1 2008/07/23 09:55:18 qglineur Exp $
 */
package org.eclipse.qvt.declarative.emof.EMOF;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Multiplicity Element</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.eclipse.qvt.declarative.emof.EMOF.MultiplicityElement#getIsOrdered <em>Is Ordered</em>}</li>
 *   <li>{@link org.eclipse.qvt.declarative.emof.EMOF.MultiplicityElement#getIsUnique <em>Is Unique</em>}</li>
 *   <li>{@link org.eclipse.qvt.declarative.emof.EMOF.MultiplicityElement#getLower <em>Lower</em>}</li>
 *   <li>{@link org.eclipse.qvt.declarative.emof.EMOF.MultiplicityElement#getUpper <em>Upper</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.eclipse.qvt.declarative.emof.EMOF.EMOFPackage#getMultiplicityElement()
 * @model abstract="true"
 * @generated
 */
public interface MultiplicityElement extends EObject {
	/**
	 * Returns the value of the '<em><b>Is Ordered</b></em>' attribute.
	 * The default value is <code>"false"</code>.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Is Ordered</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Is Ordered</em>' attribute.
	 * @see #setIsOrdered(Boolean)
	 * @see org.eclipse.qvt.declarative.emof.EMOF.EMOFPackage#getMultiplicityElement_IsOrdered()
	 * @model default="false" dataType="org.eclipse.qvt.declarative.emof.EMOF.Boolean"
	 * @generated
	 */
	Boolean getIsOrdered();

	/**
	 * Sets the value of the '{@link org.eclipse.qvt.declarative.emof.EMOF.MultiplicityElement#getIsOrdered <em>Is Ordered</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Is Ordered</em>' attribute.
	 * @see #getIsOrdered()
	 * @generated
	 */
	void setIsOrdered(Boolean value);

	/**
	 * Returns the value of the '<em><b>Is Unique</b></em>' attribute.
	 * The default value is <code>"true"</code>.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Is Unique</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Is Unique</em>' attribute.
	 * @see #setIsUnique(Boolean)
	 * @see org.eclipse.qvt.declarative.emof.EMOF.EMOFPackage#getMultiplicityElement_IsUnique()
	 * @model default="true" dataType="org.eclipse.qvt.declarative.emof.EMOF.Boolean"
	 * @generated
	 */
	Boolean getIsUnique();

	/**
	 * Sets the value of the '{@link org.eclipse.qvt.declarative.emof.EMOF.MultiplicityElement#getIsUnique <em>Is Unique</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Is Unique</em>' attribute.
	 * @see #getIsUnique()
	 * @generated
	 */
	void setIsUnique(Boolean value);

	/**
	 * Returns the value of the '<em><b>Lower</b></em>' attribute.
	 * The default value is <code>"1"</code>.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Lower</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Lower</em>' attribute.
	 * @see #setLower(Integer)
	 * @see org.eclipse.qvt.declarative.emof.EMOF.EMOFPackage#getMultiplicityElement_Lower()
	 * @model default="1" dataType="org.eclipse.qvt.declarative.emof.EMOF.Integer"
	 * @generated
	 */
	Integer getLower();

	/**
	 * Sets the value of the '{@link org.eclipse.qvt.declarative.emof.EMOF.MultiplicityElement#getLower <em>Lower</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Lower</em>' attribute.
	 * @see #getLower()
	 * @generated
	 */
	void setLower(Integer value);

	/**
	 * Returns the value of the '<em><b>Upper</b></em>' attribute.
	 * The default value is <code>"1"</code>.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Upper</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Upper</em>' attribute.
	 * @see #setUpper(Integer)
	 * @see org.eclipse.qvt.declarative.emof.EMOF.EMOFPackage#getMultiplicityElement_Upper()
	 * @model default="1" dataType="org.eclipse.qvt.declarative.emof.EMOF.UnlimitedNatural"
	 * @generated
	 */
	Integer getUpper();

	/**
	 * Sets the value of the '{@link org.eclipse.qvt.declarative.emof.EMOF.MultiplicityElement#getUpper <em>Upper</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Upper</em>' attribute.
	 * @see #getUpper()
	 * @generated
	 */
	void setUpper(Integer value);

} // MultiplicityElement
