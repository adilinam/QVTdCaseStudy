/*******************************************************************************
 * Copyright (c) 2013 Willink Transformations and others.
 * All rights reserved.   This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *   E.D.Willink - Initial API and implementation
 *******************************************************************************/
package org.eclipse.qvtd.codegen.qvti;

import org.eclipse.jdt.annotation.Nullable;
import org.eclipse.ocl.examples.codegen.generator.CodeGenOptions;

public class QVTiCodeGenOptions extends CodeGenOptions
{
	/**
	 * Optional packaging prefix (may have internal dots, no trailing dots)
	 */
	private String packagePrefix = null;
	
	public @Nullable String getPackagePrefix() {
		return packagePrefix;
	}
	
	public void setPackagePrefix(@Nullable String packagePrefix) {
		this.packagePrefix = packagePrefix;
	}
}
