/*******************************************************************************
 * Copyright (c) 2015 Willink Transformations and others.
 * All rights reserved.   This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *   E.D.Willink - Initial API and implementation
 *******************************************************************************/
package org.eclipse.qvtd.compiler.internal.scheduler;

import org.eclipse.jdt.annotation.NonNull;

/**
 * A SimpleEdge joins a pair of SimpleNodes in a SimpleRegion (no merging).
 */
public interface SimpleEdge extends Edge, Iterable<SimpleEdge>
{
	@Override
	@NonNull SimpleNode getSource();
	@Override
	@NonNull SimpleNode getTarget();
}