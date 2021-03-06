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
package org.eclipse.qvt.declarative.editor.ui.format;


public abstract class AbstractFormatHelper<T> implements IFormatHelper<T>
{
	protected final IFormatManager manager;
	protected final Class<T> formattedClass;
	
	protected AbstractFormatHelper(IFormatManager manager, Class<T> formattedClass) {
		this.manager = manager;
		this.formattedClass = formattedClass;
	}

	public Class<T> getFormattedClass() {
		return formattedClass;
	}

	public IFormatManager getFormatManager() {
		return manager;
	}
}