/*******************************************************************************
 * Copyright (c) 2007 E.D.Willink and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     E.D.Willink - initial API and implementation
 *******************************************************************************/
package org.eclipse.qvt.declarative.editor.ui.utils;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.qvt.declarative.ecore.utils.EcoreUtils;

/**
 * MissingObjectException is thrown by EcoreUpdater on encountering an xmi:id without a corresponding object.
 */
public class MissingObjectException extends MissingElementException
{
	private static final long serialVersionUID = 2289080190944943839L;
	protected final String id;
	
	public MissingObjectException(EObject object, String id) {
		super(object);
		this.id = id;
	}

	@Override
	public String toString() {
		return super.toString() + " xmi:id=" + id + " name='" + EcoreUtils.formatQualifiedName(object) + "'";
	}
}