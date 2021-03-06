/*******************************************************************************
 * Copyright (c) 2010, 2015 Willink Transformations and others.
 * All rights reserved.   This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *   E.D.Willink - Initial API and implementation
 *******************************************************************************/
package org.eclipse.ocl.pivot.internal;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.jdt.annotation.NonNull;
import org.eclipse.ocl.pivot.AnyType;
import org.eclipse.ocl.pivot.PivotPackage;
import org.eclipse.ocl.pivot.ids.IdManager;
import org.eclipse.ocl.pivot.ids.TypeId;
import org.eclipse.ocl.pivot.util.Visitor;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Any Type</b></em>'.
 * <!-- end-user-doc -->
 *
 * @generated
 */
public class AnyTypeImpl
		extends ClassImpl
		implements AnyType {

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected AnyTypeImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return PivotPackage.Literals.ANY_TYPE;
	}

	@Override
	public <R> R accept(@NonNull Visitor<R> visitor) {
		return visitor.visitAnyType(this);
	}

/*	@Override
	public boolean conformsTo(@NonNull DomainStandardLibrary standardLibrary, @NonNull DomainType type) {
		if (type instanceof AnyType) {
			return true;
		}
		else {
			return false;
		}
	} */

	@Override
	public @NonNull TypeId computeId() {
		if (TypeId.OCL_ANY_NAME.equals(name)) {
			return TypeId.OCL_ANY;
		}
		else {
			String name2 = name;
			assert name2 != null;
			return IdManager.getPrimitiveTypeId(name2);		// e.g. the orphan $$ type
		}
	}
} //AnyTypeImpl
