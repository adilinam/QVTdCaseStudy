/*******************************************************************************
 * Copyright (c) 2010, 2014 Willink Transformations and others.
 * All rights reserved.   This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *   E.D.Willink - Initial API and implementation
 *******************************************************************************/
package org.eclipse.ocl.pivot.library.oclvoid;

import org.eclipse.jdt.annotation.NonNull;
import org.eclipse.jdt.annotation.Nullable;
import org.eclipse.ocl.pivot.library.AbstractSimpleBinaryOperation;

/**
 * OclVoidOrOperation realises the OclVoid::or() library operation.
 */
public class OclVoidOrOperation extends AbstractSimpleBinaryOperation
{
	public static final @NonNull OclVoidOrOperation INSTANCE = new OclVoidOrOperation();

	@Override
	public @Nullable Boolean evaluate(@Nullable Object left, @Nullable Object right) {
		if (right == TRUE_VALUE) {
			return asBoolean(right);		// Simple type cast
		}
		else {
			return asBoolean(left);			// Guaranteed exception
		}
	}
}
