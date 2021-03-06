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
package org.eclipse.qvt.declarative.parser.qvt.environment;

import lpg.runtime.Monitor;

import org.eclipse.core.runtime.IProgressMonitor;

public class LPGProgressMonitor implements Monitor
{
	protected final IProgressMonitor monitor;

	public LPGProgressMonitor(IProgressMonitor monitor) {
		this.monitor = monitor;
	}

	public boolean isCancelled() {
		return (monitor != null) && monitor.isCanceled();
	}
}