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
 * $Id: CollectionTemplateExpImpl.java,v 1.4 2009/12/19 13:38:25 ewillink Exp $
 */
package org.eclipse.qvt.declarative.ecore.QVTTemplate.impl;

import java.util.Collection;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

import org.eclipse.ocl.ecore.CollectionType;
import org.eclipse.ocl.ecore.OCLExpression;
import org.eclipse.ocl.ecore.Variable;
import org.eclipse.ocl.utilities.Visitor;

import org.eclipse.qvt.declarative.ecore.QVTTemplate.CollectionTemplateExp;
import org.eclipse.qvt.declarative.ecore.QVTTemplate.QVTTemplatePackage;
import org.eclipse.qvt.declarative.ecore.QVTTemplate.util.QVTTemplateToStringVisitor;
import org.eclipse.qvt.declarative.ecore.QVTTemplate.util.QVTTemplateVisitor;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Collection Template Exp</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link org.eclipse.qvt.declarative.ecore.QVTTemplate.impl.CollectionTemplateExpImpl#getMember <em>Member</em>}</li>
 *   <li>{@link org.eclipse.qvt.declarative.ecore.QVTTemplate.impl.CollectionTemplateExpImpl#getReferredCollectionType <em>Referred Collection Type</em>}</li>
 *   <li>{@link org.eclipse.qvt.declarative.ecore.QVTTemplate.impl.CollectionTemplateExpImpl#getRest <em>Rest</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class CollectionTemplateExpImpl extends TemplateExpImpl implements CollectionTemplateExp {
	/**
	 * The cached value of the '{@link #getMember() <em>Member</em>}' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getMember()
	 * @generated
	 * @ordered
	 */
	protected EList<OCLExpression> member;

	/**
	 * The cached value of the '{@link #getReferredCollectionType() <em>Referred Collection Type</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getReferredCollectionType()
	 * @generated
	 * @ordered
	 */
	protected CollectionType referredCollectionType;

	/**
	 * The cached value of the '{@link #getRest() <em>Rest</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getRest()
	 * @generated
	 * @ordered
	 */
	protected Variable rest;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected CollectionTemplateExpImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return QVTTemplatePackage.Literals.COLLECTION_TEMPLATE_EXP;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EList<OCLExpression> getMember() {
		if (member == null) {
			member = new EObjectContainmentEList<OCLExpression>(OCLExpression.class, this, QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__MEMBER);
		}
		return member;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public CollectionType getReferredCollectionType() {
		if (referredCollectionType != null && referredCollectionType.eIsProxy()) {
			InternalEObject oldReferredCollectionType = (InternalEObject)referredCollectionType;
			referredCollectionType = (CollectionType)eResolveProxy(oldReferredCollectionType);
			if (referredCollectionType != oldReferredCollectionType) {
				if (eNotificationRequired())
					eNotify(new ENotificationImpl(this, Notification.RESOLVE, QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REFERRED_COLLECTION_TYPE, oldReferredCollectionType, referredCollectionType));
			}
		}
		return referredCollectionType;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public CollectionType basicGetReferredCollectionType() {
		return referredCollectionType;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setReferredCollectionType(CollectionType newReferredCollectionType) {
		CollectionType oldReferredCollectionType = referredCollectionType;
		referredCollectionType = newReferredCollectionType;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REFERRED_COLLECTION_TYPE, oldReferredCollectionType, referredCollectionType));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Variable getRest() {
		if (rest != null && rest.eIsProxy()) {
			InternalEObject oldRest = (InternalEObject)rest;
			rest = (Variable)eResolveProxy(oldRest);
			if (rest != oldRest) {
				if (eNotificationRequired())
					eNotify(new ENotificationImpl(this, Notification.RESOLVE, QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REST, oldRest, rest));
			}
		}
		return rest;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Variable basicGetRest() {
		return rest;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setRest(Variable newRest) {
		Variable oldRest = rest;
		rest = newRest;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REST, oldRest, rest));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__MEMBER:
				return ((InternalEList<?>)getMember()).basicRemove(otherEnd, msgs);
		}
		return super.eInverseRemove(otherEnd, featureID, msgs);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
		switch (featureID) {
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__MEMBER:
				return getMember();
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REFERRED_COLLECTION_TYPE:
				if (resolve) return getReferredCollectionType();
				return basicGetReferredCollectionType();
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REST:
				if (resolve) return getRest();
				return basicGetRest();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@SuppressWarnings("unchecked")
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__MEMBER:
				getMember().clear();
				getMember().addAll((Collection<? extends OCLExpression>)newValue);
				return;
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REFERRED_COLLECTION_TYPE:
				setReferredCollectionType((CollectionType)newValue);
				return;
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REST:
				setRest((Variable)newValue);
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
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__MEMBER:
				getMember().clear();
				return;
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REFERRED_COLLECTION_TYPE:
				setReferredCollectionType((CollectionType)null);
				return;
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REST:
				setRest((Variable)null);
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
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__MEMBER:
				return member != null && !member.isEmpty();
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REFERRED_COLLECTION_TYPE:
				return referredCollectionType != null;
			case QVTTemplatePackage.COLLECTION_TEMPLATE_EXP__REST:
				return rest != null;
		}
		return super.eIsSet(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated NOT
	 */
	@Override
	public String toString() {
		if (eIsProxy()) {
			return super.toString();
		}		
		return accept(QVTTemplateToStringVisitor.getInstance(this));
	}

	/**
	 * @generated NOT
	 */
	@SuppressWarnings("unchecked")
	@Override
    public <T, U extends Visitor<T, ?, ?, ?, ?, ?, ?, ?, ?, ?>> T accept(U v) {
		if (v instanceof QVTTemplateVisitor<?>)
			return ((QVTTemplateVisitor<T>) v).visitCollectionTemplateExp(this);
		return super.accept(v);
	}
} //CollectionTemplateExpImpl
