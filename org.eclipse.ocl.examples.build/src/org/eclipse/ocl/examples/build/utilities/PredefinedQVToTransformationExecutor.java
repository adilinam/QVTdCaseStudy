/*******************************************************************************
 * Copyright (c) 2013, 2014 Willink Transformations and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     E.D.Willink - initial API and implementation
 *******************************************************************************/
package org.eclipse.ocl.examples.build.utilities;


public abstract class PredefinedQVToTransformationExecutor extends QVToTransformationExecutor {
	
	@Override
	public final String getUri() {
		return getPredefinedTransformationURI();
	}
	
	/**
	 * @return the predefined transformation URI for this component
	 */
	abstract protected String getPredefinedTransformationURI();
	
}
