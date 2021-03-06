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
package persistence.actions.impl;

import behavioral.actions.impl.StatementImpl;

import org.eclipse.emf.ecore.EClass;

import persistence.actions.ActionsPackage;
import persistence.actions.Rollback;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Rollback</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * </p>
 *
 * @generated
 */
public class RollbackImpl extends StatementImpl implements Rollback {
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected RollbackImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return ActionsPackage.Literals.ROLLBACK;
	}

} //RollbackImpl
