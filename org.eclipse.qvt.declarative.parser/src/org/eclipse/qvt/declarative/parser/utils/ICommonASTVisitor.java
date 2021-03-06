/*******************************************************************************
 * Copyright (c) 2008 E.D.Willink and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     E.D.Willink - initial API and implementation
 *******************************************************************************/
package org.eclipse.qvt.declarative.parser.utils;

/**
 * ICommonASTVisitor defines an API for a visitor to an AST for which
 * all nodes are subtypes of N.
 */
public interface ICommonASTVisitor<T, N>
{
	/**
	 * Visit astNode and return some typed value.
	 */
	public T visit(N astNode);
}
