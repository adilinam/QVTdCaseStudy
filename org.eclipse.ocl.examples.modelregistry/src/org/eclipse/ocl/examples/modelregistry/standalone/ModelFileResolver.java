/*******************************************************************************
 * Copyright (c) 2007, 2010 Willink Transformations and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     E.D.Willink - initial API and implementation
 *******************************************************************************/
package org.eclipse.ocl.examples.modelregistry.standalone;

import java.io.File;
import java.io.IOException;

import org.eclipse.ocl.examples.modelregistry.environment.AbstractModelResolver;

/**
 * ModelFileResolver supports use of the ModelRegistry in a standalone application using just
 * java.io.File as the handle on the physical model storage medium.
 */
public class ModelFileResolver extends AbstractModelResolver
{
	public static JavaProjectHandle createProjectHandle(File file) throws IOException {
		return new JavaProjectHandle(file, null);
	}
	
	public static JavaProjectHandle createProjectHandle(File file, String registryPath) throws IOException {
		return new JavaProjectHandle(file, registryPath);
	}
	
	public static JavaFileHandle createFileHandle(JavaProjectHandle projectHandle, File file) throws IOException {
		return projectHandle.getFileHandle(file);
	}
	
	public ModelFileResolver(JavaProjectHandle projectHandle, File file) throws IOException {
		super(createFileHandle(projectHandle, file));
	}
	
	public ModelFileResolver(JavaProjectHandle projectHandle, String file) throws IOException {
		super(createFileHandle(projectHandle, new File(file)));
	}
}
