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
 * $Id: QVTTemplatePackage.java,v 1.3 2009/11/19 10:34:54 ewillink Exp $
 */
package org.eclipse.qvt.declarative.emof.QVTTemplate;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

import org.eclipse.qvt.declarative.emof.EMOF.EMOFPackage;

import org.eclipse.qvt.declarative.emof.EssentialOCL.EssentialOCLPackage;

/**
 * <!-- begin-user-doc -->
 * The <b>Package</b> for the model.
 * It contains accessors for the meta objects to represent
 * <ul>
 *   <li>each class,</li>
 *   <li>each feature of each class,</li>
 *   <li>each enum,</li>
 *   <li>and each data type</li>
 * </ul>
 * <!-- end-user-doc -->
 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.QVTTemplateFactory
 * @model kind="package"
 * @generated
 */
public interface QVTTemplatePackage extends EPackage {
	/**
	 * The package name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNAME = "QVTTemplate";

	/**
	 * The package namespace URI.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_URI = "http://schema.omg.org/spec/QVT/1.1/qvttemplate.xml";

	/**
	 * The package namespace name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_PREFIX = "qvtt";

	/**
	 * The package content type ID.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eCONTENT_TYPE = "org.eclipse.qvt.declarative.emof.qvttemplate";

	/**
	 * The singleton instance of the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	QVTTemplatePackage eINSTANCE = org.eclipse.qvt.declarative.emof.QVTTemplate.impl.QVTTemplatePackageImpl.init();

	/**
	 * The meta object id for the '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.impl.TemplateExpImpl <em>Template Exp</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.TemplateExpImpl
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.QVTTemplatePackageImpl#getTemplateExp()
	 * @generated
	 */
	int TEMPLATE_EXP = 3;

	/**
	 * The feature id for the '<em><b>Owned Comment</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TEMPLATE_EXP__OWNED_COMMENT = EssentialOCLPackage.LITERAL_EXP__OWNED_COMMENT;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TEMPLATE_EXP__NAME = EssentialOCLPackage.LITERAL_EXP__NAME;

	/**
	 * The feature id for the '<em><b>Type</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TEMPLATE_EXP__TYPE = EssentialOCLPackage.LITERAL_EXP__TYPE;

	/**
	 * The feature id for the '<em><b>Binds To</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TEMPLATE_EXP__BINDS_TO = EssentialOCLPackage.LITERAL_EXP_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Where</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TEMPLATE_EXP__WHERE = EssentialOCLPackage.LITERAL_EXP_FEATURE_COUNT + 1;

	/**
	 * The number of structural features of the '<em>Template Exp</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TEMPLATE_EXP_FEATURE_COUNT = EssentialOCLPackage.LITERAL_EXP_FEATURE_COUNT + 2;

	/**
	 * The meta object id for the '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.impl.CollectionTemplateExpImpl <em>Collection Template Exp</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.CollectionTemplateExpImpl
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.QVTTemplatePackageImpl#getCollectionTemplateExp()
	 * @generated
	 */
	int COLLECTION_TEMPLATE_EXP = 0;

	/**
	 * The feature id for the '<em><b>Owned Comment</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COLLECTION_TEMPLATE_EXP__OWNED_COMMENT = TEMPLATE_EXP__OWNED_COMMENT;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COLLECTION_TEMPLATE_EXP__NAME = TEMPLATE_EXP__NAME;

	/**
	 * The feature id for the '<em><b>Type</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COLLECTION_TEMPLATE_EXP__TYPE = TEMPLATE_EXP__TYPE;

	/**
	 * The feature id for the '<em><b>Binds To</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COLLECTION_TEMPLATE_EXP__BINDS_TO = TEMPLATE_EXP__BINDS_TO;

	/**
	 * The feature id for the '<em><b>Where</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COLLECTION_TEMPLATE_EXP__WHERE = TEMPLATE_EXP__WHERE;

	/**
	 * The feature id for the '<em><b>Member</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COLLECTION_TEMPLATE_EXP__MEMBER = TEMPLATE_EXP_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Referred Collection Type</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COLLECTION_TEMPLATE_EXP__REFERRED_COLLECTION_TYPE = TEMPLATE_EXP_FEATURE_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Rest</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COLLECTION_TEMPLATE_EXP__REST = TEMPLATE_EXP_FEATURE_COUNT + 2;

	/**
	 * The number of structural features of the '<em>Collection Template Exp</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int COLLECTION_TEMPLATE_EXP_FEATURE_COUNT = TEMPLATE_EXP_FEATURE_COUNT + 3;

	/**
	 * The meta object id for the '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.impl.ObjectTemplateExpImpl <em>Object Template Exp</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.ObjectTemplateExpImpl
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.QVTTemplatePackageImpl#getObjectTemplateExp()
	 * @generated
	 */
	int OBJECT_TEMPLATE_EXP = 1;

	/**
	 * The feature id for the '<em><b>Owned Comment</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OBJECT_TEMPLATE_EXP__OWNED_COMMENT = TEMPLATE_EXP__OWNED_COMMENT;

	/**
	 * The feature id for the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OBJECT_TEMPLATE_EXP__NAME = TEMPLATE_EXP__NAME;

	/**
	 * The feature id for the '<em><b>Type</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OBJECT_TEMPLATE_EXP__TYPE = TEMPLATE_EXP__TYPE;

	/**
	 * The feature id for the '<em><b>Binds To</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OBJECT_TEMPLATE_EXP__BINDS_TO = TEMPLATE_EXP__BINDS_TO;

	/**
	 * The feature id for the '<em><b>Where</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OBJECT_TEMPLATE_EXP__WHERE = TEMPLATE_EXP__WHERE;

	/**
	 * The feature id for the '<em><b>Part</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OBJECT_TEMPLATE_EXP__PART = TEMPLATE_EXP_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Referred Class</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OBJECT_TEMPLATE_EXP__REFERRED_CLASS = TEMPLATE_EXP_FEATURE_COUNT + 1;

	/**
	 * The number of structural features of the '<em>Object Template Exp</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OBJECT_TEMPLATE_EXP_FEATURE_COUNT = TEMPLATE_EXP_FEATURE_COUNT + 2;

	/**
	 * The meta object id for the '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.impl.PropertyTemplateItemImpl <em>Property Template Item</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.PropertyTemplateItemImpl
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.QVTTemplatePackageImpl#getPropertyTemplateItem()
	 * @generated
	 */
	int PROPERTY_TEMPLATE_ITEM = 2;

	/**
	 * The feature id for the '<em><b>Owned Comment</b></em>' containment reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PROPERTY_TEMPLATE_ITEM__OWNED_COMMENT = EMOFPackage.ELEMENT__OWNED_COMMENT;

	/**
	 * The feature id for the '<em><b>Obj Container</b></em>' container reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PROPERTY_TEMPLATE_ITEM__OBJ_CONTAINER = EMOFPackage.ELEMENT_FEATURE_COUNT + 0;

	/**
	 * The feature id for the '<em><b>Referred Property</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PROPERTY_TEMPLATE_ITEM__REFERRED_PROPERTY = EMOFPackage.ELEMENT_FEATURE_COUNT + 1;

	/**
	 * The feature id for the '<em><b>Value</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PROPERTY_TEMPLATE_ITEM__VALUE = EMOFPackage.ELEMENT_FEATURE_COUNT + 2;

	/**
	 * The feature id for the '<em><b>Is Opposite</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PROPERTY_TEMPLATE_ITEM__IS_OPPOSITE = EMOFPackage.ELEMENT_FEATURE_COUNT + 3;

	/**
	 * The number of structural features of the '<em>Property Template Item</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int PROPERTY_TEMPLATE_ITEM_FEATURE_COUNT = EMOFPackage.ELEMENT_FEATURE_COUNT + 4;


	/**
	 * Returns the meta object for class '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.CollectionTemplateExp <em>Collection Template Exp</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Collection Template Exp</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.CollectionTemplateExp
	 * @generated
	 */
	EClass getCollectionTemplateExp();

	/**
	 * Returns the meta object for the containment reference list '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.CollectionTemplateExp#getMember <em>Member</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference list '<em>Member</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.CollectionTemplateExp#getMember()
	 * @see #getCollectionTemplateExp()
	 * @generated
	 */
	EReference getCollectionTemplateExp_Member();

	/**
	 * Returns the meta object for the reference '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.CollectionTemplateExp#getReferredCollectionType <em>Referred Collection Type</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the reference '<em>Referred Collection Type</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.CollectionTemplateExp#getReferredCollectionType()
	 * @see #getCollectionTemplateExp()
	 * @generated
	 */
	EReference getCollectionTemplateExp_ReferredCollectionType();

	/**
	 * Returns the meta object for the reference '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.CollectionTemplateExp#getRest <em>Rest</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the reference '<em>Rest</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.CollectionTemplateExp#getRest()
	 * @see #getCollectionTemplateExp()
	 * @generated
	 */
	EReference getCollectionTemplateExp_Rest();

	/**
	 * Returns the meta object for class '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.ObjectTemplateExp <em>Object Template Exp</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Object Template Exp</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.ObjectTemplateExp
	 * @generated
	 */
	EClass getObjectTemplateExp();

	/**
	 * Returns the meta object for the containment reference list '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.ObjectTemplateExp#getPart <em>Part</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference list '<em>Part</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.ObjectTemplateExp#getPart()
	 * @see #getObjectTemplateExp()
	 * @generated
	 */
	EReference getObjectTemplateExp_Part();

	/**
	 * Returns the meta object for the reference '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.ObjectTemplateExp#getReferredClass <em>Referred Class</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the reference '<em>Referred Class</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.ObjectTemplateExp#getReferredClass()
	 * @see #getObjectTemplateExp()
	 * @generated
	 */
	EReference getObjectTemplateExp_ReferredClass();

	/**
	 * Returns the meta object for class '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.PropertyTemplateItem <em>Property Template Item</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Property Template Item</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.PropertyTemplateItem
	 * @generated
	 */
	EClass getPropertyTemplateItem();

	/**
	 * Returns the meta object for the container reference '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.PropertyTemplateItem#getObjContainer <em>Obj Container</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the container reference '<em>Obj Container</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.PropertyTemplateItem#getObjContainer()
	 * @see #getPropertyTemplateItem()
	 * @generated
	 */
	EReference getPropertyTemplateItem_ObjContainer();

	/**
	 * Returns the meta object for the reference '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.PropertyTemplateItem#getReferredProperty <em>Referred Property</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the reference '<em>Referred Property</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.PropertyTemplateItem#getReferredProperty()
	 * @see #getPropertyTemplateItem()
	 * @generated
	 */
	EReference getPropertyTemplateItem_ReferredProperty();

	/**
	 * Returns the meta object for the containment reference '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.PropertyTemplateItem#getValue <em>Value</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference '<em>Value</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.PropertyTemplateItem#getValue()
	 * @see #getPropertyTemplateItem()
	 * @generated
	 */
	EReference getPropertyTemplateItem_Value();

	/**
	 * Returns the meta object for the attribute '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.PropertyTemplateItem#getIsOpposite <em>Is Opposite</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the attribute '<em>Is Opposite</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.PropertyTemplateItem#getIsOpposite()
	 * @see #getPropertyTemplateItem()
	 * @generated
	 */
	EAttribute getPropertyTemplateItem_IsOpposite();

	/**
	 * Returns the meta object for class '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.TemplateExp <em>Template Exp</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Template Exp</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.TemplateExp
	 * @generated
	 */
	EClass getTemplateExp();

	/**
	 * Returns the meta object for the reference '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.TemplateExp#getBindsTo <em>Binds To</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the reference '<em>Binds To</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.TemplateExp#getBindsTo()
	 * @see #getTemplateExp()
	 * @generated
	 */
	EReference getTemplateExp_BindsTo();

	/**
	 * Returns the meta object for the containment reference '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.TemplateExp#getWhere <em>Where</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for the containment reference '<em>Where</em>'.
	 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.TemplateExp#getWhere()
	 * @see #getTemplateExp()
	 * @generated
	 */
	EReference getTemplateExp_Where();

	/**
	 * Returns the factory that creates the instances of the model.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the factory that creates the instances of the model.
	 * @generated
	 */
	QVTTemplateFactory getQVTTemplateFactory();

	/**
	 * <!-- begin-user-doc -->
	 * Defines literals for the meta objects that represent
	 * <ul>
	 *   <li>each class,</li>
	 *   <li>each feature of each class,</li>
	 *   <li>each enum,</li>
	 *   <li>and each data type</li>
	 * </ul>
	 * <!-- end-user-doc -->
	 * @generated
	 */
	interface Literals {
		/**
		 * The meta object literal for the '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.impl.CollectionTemplateExpImpl <em>Collection Template Exp</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.CollectionTemplateExpImpl
		 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.QVTTemplatePackageImpl#getCollectionTemplateExp()
		 * @generated
		 */
		EClass COLLECTION_TEMPLATE_EXP = eINSTANCE.getCollectionTemplateExp();

		/**
		 * The meta object literal for the '<em><b>Member</b></em>' containment reference list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference COLLECTION_TEMPLATE_EXP__MEMBER = eINSTANCE.getCollectionTemplateExp_Member();

		/**
		 * The meta object literal for the '<em><b>Referred Collection Type</b></em>' reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference COLLECTION_TEMPLATE_EXP__REFERRED_COLLECTION_TYPE = eINSTANCE.getCollectionTemplateExp_ReferredCollectionType();

		/**
		 * The meta object literal for the '<em><b>Rest</b></em>' reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference COLLECTION_TEMPLATE_EXP__REST = eINSTANCE.getCollectionTemplateExp_Rest();

		/**
		 * The meta object literal for the '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.impl.ObjectTemplateExpImpl <em>Object Template Exp</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.ObjectTemplateExpImpl
		 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.QVTTemplatePackageImpl#getObjectTemplateExp()
		 * @generated
		 */
		EClass OBJECT_TEMPLATE_EXP = eINSTANCE.getObjectTemplateExp();

		/**
		 * The meta object literal for the '<em><b>Part</b></em>' containment reference list feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference OBJECT_TEMPLATE_EXP__PART = eINSTANCE.getObjectTemplateExp_Part();

		/**
		 * The meta object literal for the '<em><b>Referred Class</b></em>' reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference OBJECT_TEMPLATE_EXP__REFERRED_CLASS = eINSTANCE.getObjectTemplateExp_ReferredClass();

		/**
		 * The meta object literal for the '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.impl.PropertyTemplateItemImpl <em>Property Template Item</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.PropertyTemplateItemImpl
		 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.QVTTemplatePackageImpl#getPropertyTemplateItem()
		 * @generated
		 */
		EClass PROPERTY_TEMPLATE_ITEM = eINSTANCE.getPropertyTemplateItem();

		/**
		 * The meta object literal for the '<em><b>Obj Container</b></em>' container reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference PROPERTY_TEMPLATE_ITEM__OBJ_CONTAINER = eINSTANCE.getPropertyTemplateItem_ObjContainer();

		/**
		 * The meta object literal for the '<em><b>Referred Property</b></em>' reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference PROPERTY_TEMPLATE_ITEM__REFERRED_PROPERTY = eINSTANCE.getPropertyTemplateItem_ReferredProperty();

		/**
		 * The meta object literal for the '<em><b>Value</b></em>' containment reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference PROPERTY_TEMPLATE_ITEM__VALUE = eINSTANCE.getPropertyTemplateItem_Value();

		/**
		 * The meta object literal for the '<em><b>Is Opposite</b></em>' attribute feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EAttribute PROPERTY_TEMPLATE_ITEM__IS_OPPOSITE = eINSTANCE.getPropertyTemplateItem_IsOpposite();

		/**
		 * The meta object literal for the '{@link org.eclipse.qvt.declarative.emof.QVTTemplate.impl.TemplateExpImpl <em>Template Exp</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.TemplateExpImpl
		 * @see org.eclipse.qvt.declarative.emof.QVTTemplate.impl.QVTTemplatePackageImpl#getTemplateExp()
		 * @generated
		 */
		EClass TEMPLATE_EXP = eINSTANCE.getTemplateExp();

		/**
		 * The meta object literal for the '<em><b>Binds To</b></em>' reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference TEMPLATE_EXP__BINDS_TO = eINSTANCE.getTemplateExp_BindsTo();

		/**
		 * The meta object literal for the '<em><b>Where</b></em>' containment reference feature.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @generated
		 */
		EReference TEMPLATE_EXP__WHERE = eINSTANCE.getTemplateExp_Where();

	}

} //QVTTemplatePackage
