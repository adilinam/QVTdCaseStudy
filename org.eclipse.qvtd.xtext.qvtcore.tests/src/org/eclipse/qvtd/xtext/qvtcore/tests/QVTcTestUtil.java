/*******************************************************************************
 * Copyright (c) 2015 Willink Transformations and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     E.D.Willink - initial API and implementation
 *******************************************************************************/
package org.eclipse.qvtd.xtext.qvtcore.tests;

import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.ocl.examples.xtext.tests.TestUtil;
import org.eclipse.qvtd.xtext.qvtcore.QVTcoreStandaloneSetup;

import com.google.inject.Guice;

public class QVTcTestUtil extends TestUtil
{
	/**
	 * Perform the appropriate initialization to support QVTcore parsing and editing using Xtext.
	 * NB. This must be called before setUp() creates a GlobalStateMemento if the aggressive DEBUG_GC
	 * garbage collection is enabled.
	 */
	public static void doQVTcoreSetup() {
    	if (!EMFPlugin.IS_ECLIPSE_RUNNING) {
    		QVTcoreStandaloneSetup.doSetup();
    	}
    	else {
    		Guice.createInjector(new org.eclipse.qvtd.xtext.qvtcore.QVTcoreRuntimeModule());
    	}
	}
}
