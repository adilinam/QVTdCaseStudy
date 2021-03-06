/*******************************************************************************
 * Copyright (c) 2013, 2015 Willink Transformations and others.
 * All rights reserved.   This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *   E.D.Willink - Initial API and implementation
 *******************************************************************************/
package org.eclipse.ocl.pivot.internal.evaluation.tx;

import org.eclipse.jdt.annotation.NonNull;
import org.eclipse.jdt.annotation.Nullable;
import org.eclipse.ocl.pivot.evaluation.tx.Invocation;
import org.eclipse.ocl.pivot.evaluation.tx.SlotState;

/**
 * AbstractInvocation provides the shared implementation of the intrusive blocked/waiting linked list functionality.
 * @since 1.1
 */
public abstract class AbstractInvocationInternal implements Invocation
{
	@NonNull AbstractInvocationInternal prev = this;
	@NonNull AbstractInvocationInternal next = this;
	public @Nullable SlotState debug_blockedBy = null;
	
	@Override
	public void insertAfter(@NonNull Invocation predecessor) {
		@NonNull AbstractInvocationInternal castPredecessor = (AbstractInvocationInternal)predecessor;
		@NonNull AbstractInvocationInternal successor = castPredecessor.next;
		successor.prev = this;
		next = successor;
		castPredecessor.next = this;
		prev = castPredecessor;
	}

	@Override
	public void remove() {
		prev.next = next;
		next.prev = prev;
		prev = this;
		next = this;
	}

	@Override
	public String toString() {
		return getClass().getSimpleName() + "@" + Integer.toHexString(System.identityHashCode(this));
	}
}