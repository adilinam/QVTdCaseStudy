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
package org.eclipse.ocl.pivot.library.collection;

import org.eclipse.jdt.annotation.NonNull;
import org.eclipse.jdt.annotation.Nullable;
import org.eclipse.ocl.pivot.library.AbstractSimpleUnaryOperation;
import org.eclipse.ocl.pivot.values.SequenceValue;

/**
 * OrderedCollectionLastOperation realises the OrderedCollection::last() library operation.
 */
public class OrderedCollectionLastOperation extends AbstractSimpleUnaryOperation
{
	public static final @NonNull OrderedCollectionLastOperation INSTANCE = new OrderedCollectionLastOperation();

	@Override
	public @Nullable Object evaluate(@Nullable Object argument) {
		SequenceValue orderedCollectionValue = asSequenceValue(argument);
		return orderedCollectionValue.last();
	}
}
