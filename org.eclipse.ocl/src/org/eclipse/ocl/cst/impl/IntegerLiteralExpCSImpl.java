/*******************************************************************************
 * Copyright (c) 2005, 2012 IBM Corporation, Zeligsoft Inc., and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *   IBM - Initial API and implementation
 *   Zeligsoft - Bug 243976
 *******************************************************************************/
package org.eclipse.ocl.cst.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.ocl.cst.CSTPackage;
import org.eclipse.ocl.cst.IntegerLiteralExpCS;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Integer Literal Exp CS</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link org.eclipse.ocl.cst.impl.IntegerLiteralExpCSImpl#getIntegerSymbol <em>Integer Symbol</em>}</li>
 *   <li>{@link org.eclipse.ocl.cst.impl.IntegerLiteralExpCSImpl#getExtendedIntegerSymbol <em>Extended Integer Symbol</em>}</li>
 *   <li>{@link org.eclipse.ocl.cst.impl.IntegerLiteralExpCSImpl#getLongSymbol <em>Long Symbol</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class IntegerLiteralExpCSImpl
		extends PrimitiveLiteralExpCSImpl
		implements IntegerLiteralExpCS {

	/**
	 * The default value of the '{@link #getIntegerSymbol() <em>Integer Symbol</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getIntegerSymbol()
	 * @generated
	 * @ordered
	 */
	protected static final Integer INTEGER_SYMBOL_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getIntegerSymbol() <em>Integer Symbol</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getIntegerSymbol()
	 * @generated
	 * @ordered
	 */
	protected Integer integerSymbol = INTEGER_SYMBOL_EDEFAULT;

	/**
	 * The default value of the '{@link #getExtendedIntegerSymbol() <em>Extended Integer Symbol</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * @since 3.2
	 * <!-- end-user-doc -->
	 * @see #getExtendedIntegerSymbol()
	 * @generated
	 * @ordered
	 */
	protected static final Long EXTENDED_INTEGER_SYMBOL_EDEFAULT = new Long(0L);

	/**
	 * The cached value of the '{@link #getExtendedIntegerSymbol() <em>Extended Integer Symbol</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * @since 3.2
	 * <!-- end-user-doc -->
	 * @see #getExtendedIntegerSymbol()
	 * @generated
	 * @ordered
	 */
	protected Long extendedIntegerSymbol = EXTENDED_INTEGER_SYMBOL_EDEFAULT;

	/**
	 * The default value of the '{@link #getLongSymbol() <em>Long Symbol</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * @since 3.2
	 * <!-- end-user-doc -->
	 * @see #getLongSymbol()
	 * @generated
	 * @ordered
	 */
	protected static final Long LONG_SYMBOL_EDEFAULT = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected IntegerLiteralExpCSImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return CSTPackage.Literals.INTEGER_LITERAL_EXP_CS;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated NOT
	 */
	public Integer getIntegerSymbol() {
		if (extendedIntegerSymbol != 0) {
			throw new IllegalStateException(
				"getIntegerSymbol() for non-Integer"); //$NON-NLS-1$
		}
		return integerSymbol;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated NOT
	 */
	public void setIntegerSymbol(Integer newIntegerSymbol) {
		Integer oldIntegerSymbol = integerSymbol;
		Long oldExtendedIntegerSymbol = extendedIntegerSymbol;
		integerSymbol = newIntegerSymbol;
		extendedIntegerSymbol = 0L;
		if (eNotificationRequired())
			if (oldExtendedIntegerSymbol != 0) {
				eNotify(new ENotificationImpl(this, Notification.SET,
					CSTPackage.INTEGER_LITERAL_EXP_CS__EXTENDED_INTEGER_SYMBOL,
					oldExtendedIntegerSymbol, extendedIntegerSymbol));
			}
		eNotify(new ENotificationImpl(this, Notification.SET,
			CSTPackage.INTEGER_LITERAL_EXP_CS__INTEGER_SYMBOL,
			oldIntegerSymbol, integerSymbol));
	}

	/**
	 * <!-- begin-user-doc -->
	 * @since 3.2
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Long getExtendedIntegerSymbol() {
		return extendedIntegerSymbol;
	}

	/**
	 * <!-- begin-user-doc -->
	 * @since 3.2
	 * <!-- end-user-doc -->
	 * @generated NOT
	 */
	public Long getLongSymbol() {
		return extendedIntegerSymbol * (1L << Integer.SIZE)
			+ (integerSymbol != null
				? integerSymbol
				: 0);
	}

	/**
	 * <!-- begin-user-doc -->
	 * @since 3.2
	 * <!-- end-user-doc -->
	 * @generated NOT
	 */
	public void setLongSymbol(Long newLongSymbol) {
		Integer oldIntegerSymbol = integerSymbol;
		Long oldExtendedIntegerSymbol = extendedIntegerSymbol;
		integerSymbol = (int) (newLongSymbol & ((1L << Integer.SIZE) - 1));
		extendedIntegerSymbol = (newLongSymbol >> Integer.SIZE)
			+ ((integerSymbol < 0)
				? 1
				: 0);
		if (eNotificationRequired()) {
			eNotify(new ENotificationImpl(this, Notification.SET,
				CSTPackage.INTEGER_LITERAL_EXP_CS__EXTENDED_INTEGER_SYMBOL,
				oldExtendedIntegerSymbol, extendedIntegerSymbol));
			eNotify(new ENotificationImpl(this, Notification.SET,
				CSTPackage.INTEGER_LITERAL_EXP_CS__INTEGER_SYMBOL,
				oldIntegerSymbol, integerSymbol));
		}
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
		switch (featureID) {
			case CSTPackage.INTEGER_LITERAL_EXP_CS__INTEGER_SYMBOL :
				return getIntegerSymbol();
			case CSTPackage.INTEGER_LITERAL_EXP_CS__EXTENDED_INTEGER_SYMBOL :
				return getExtendedIntegerSymbol();
			case CSTPackage.INTEGER_LITERAL_EXP_CS__LONG_SYMBOL :
				return getLongSymbol();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
			case CSTPackage.INTEGER_LITERAL_EXP_CS__INTEGER_SYMBOL :
				setIntegerSymbol((Integer) newValue);
				return;
			case CSTPackage.INTEGER_LITERAL_EXP_CS__LONG_SYMBOL :
				setLongSymbol((Long) newValue);
				return;
		}
		super.eSet(featureID, newValue);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eUnset(int featureID) {
		switch (featureID) {
			case CSTPackage.INTEGER_LITERAL_EXP_CS__INTEGER_SYMBOL :
				setIntegerSymbol(INTEGER_SYMBOL_EDEFAULT);
				return;
			case CSTPackage.INTEGER_LITERAL_EXP_CS__LONG_SYMBOL :
				setLongSymbol(LONG_SYMBOL_EDEFAULT);
				return;
		}
		super.eUnset(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean eIsSet(int featureID) {
		switch (featureID) {
			case CSTPackage.INTEGER_LITERAL_EXP_CS__INTEGER_SYMBOL :
				return INTEGER_SYMBOL_EDEFAULT == null
					? integerSymbol != null
					: !INTEGER_SYMBOL_EDEFAULT.equals(integerSymbol);
			case CSTPackage.INTEGER_LITERAL_EXP_CS__EXTENDED_INTEGER_SYMBOL :
				return EXTENDED_INTEGER_SYMBOL_EDEFAULT == null
					? extendedIntegerSymbol != null
					: !EXTENDED_INTEGER_SYMBOL_EDEFAULT
						.equals(extendedIntegerSymbol);
			case CSTPackage.INTEGER_LITERAL_EXP_CS__LONG_SYMBOL :
				return LONG_SYMBOL_EDEFAULT == null
					? getLongSymbol() != null
					: !LONG_SYMBOL_EDEFAULT.equals(getLongSymbol());
		}
		return super.eIsSet(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String toString() {
		if (eIsProxy())
			return super.toString();

		StringBuffer result = new StringBuffer(super.toString());
		result.append(" (integerSymbol: "); //$NON-NLS-1$
		result.append(integerSymbol);
		result.append(", extendedIntegerSymbol: "); //$NON-NLS-1$
		result.append(extendedIntegerSymbol);
		result.append(')');
		return result.toString();
	}

} //IntegerLiteralExpCSImpl
