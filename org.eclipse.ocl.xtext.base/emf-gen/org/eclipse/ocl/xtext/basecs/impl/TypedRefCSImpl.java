/*******************************************************************************
 * Copyright (c) 2010, 2015 Willink Transformations and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     E.D.Willink - initial API and implementation
 *******************************************************************************/

package org.eclipse.ocl.xtext.basecs.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.ocl.xtext.basecs.BaseCSPackage;
import org.eclipse.ocl.xtext.basecs.MultiplicityCS;
import org.eclipse.ocl.xtext.basecs.TypedRefCS;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Typed Ref CS</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.ocl.xtext.basecs.impl.TypedRefCSImpl#getOwnedMultiplicity <em>Owned Multiplicity</em>}</li>
 * </ul>
 *
 * @generated
 */
public abstract class TypedRefCSImpl extends TypeRefCSImpl implements TypedRefCS {
	/**
	 * The cached value of the '{@link #getOwnedMultiplicity() <em>Owned Multiplicity</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getOwnedMultiplicity()
	 * @generated
	 * @ordered
	 */
	protected MultiplicityCS ownedMultiplicity;
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected TypedRefCSImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return BaseCSPackage.Literals.TYPED_REF_CS;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public MultiplicityCS getOwnedMultiplicity()
	{
		return ownedMultiplicity;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetOwnedMultiplicity(MultiplicityCS newOwnedMultiplicity, NotificationChain msgs)
	{
		MultiplicityCS oldOwnedMultiplicity = ownedMultiplicity;
		ownedMultiplicity = newOwnedMultiplicity;
		if (eNotificationRequired())
		{
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BaseCSPackage.TYPED_REF_CS__OWNED_MULTIPLICITY, oldOwnedMultiplicity, newOwnedMultiplicity);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void setOwnedMultiplicity(MultiplicityCS newOwnedMultiplicity)
	{
		if (newOwnedMultiplicity != ownedMultiplicity)
		{
			NotificationChain msgs = null;
			if (ownedMultiplicity != null)
				msgs = ((InternalEObject)ownedMultiplicity).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BaseCSPackage.TYPED_REF_CS__OWNED_MULTIPLICITY, null, msgs);
			if (newOwnedMultiplicity != null)
				msgs = ((InternalEObject)newOwnedMultiplicity).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BaseCSPackage.TYPED_REF_CS__OWNED_MULTIPLICITY, null, msgs);
			msgs = basicSetOwnedMultiplicity(newOwnedMultiplicity, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, BaseCSPackage.TYPED_REF_CS__OWNED_MULTIPLICITY, newOwnedMultiplicity, newOwnedMultiplicity));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs)
	{
		switch (featureID)
		{
			case BaseCSPackage.TYPED_REF_CS__OWNED_MULTIPLICITY:
				return basicSetOwnedMultiplicity(null, msgs);
		}
		return super.eInverseRemove(otherEnd, featureID, msgs);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType)
	{
		switch (featureID)
		{
			case BaseCSPackage.TYPED_REF_CS__OWNED_MULTIPLICITY:
				return getOwnedMultiplicity();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eSet(int featureID, Object newValue)
	{
		switch (featureID)
		{
			case BaseCSPackage.TYPED_REF_CS__OWNED_MULTIPLICITY:
				setOwnedMultiplicity((MultiplicityCS)newValue);
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
	public void eUnset(int featureID)
	{
		switch (featureID)
		{
			case BaseCSPackage.TYPED_REF_CS__OWNED_MULTIPLICITY:
				setOwnedMultiplicity((MultiplicityCS)null);
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
	public boolean eIsSet(int featureID)
	{
		switch (featureID)
		{
			case BaseCSPackage.TYPED_REF_CS__OWNED_MULTIPLICITY:
				return ownedMultiplicity != null;
		}
		return super.eIsSet(featureID);
	}
} //TypedRefCSImpl
