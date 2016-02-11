/*******************************************************************************
 * Copyright (c) 2009, 2013 Willink Transformations and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *   IBM - Initial API and implementation
 *   E.D.Willink - Bug 298634
 *******************************************************************************/

package org.eclipse.ocl.uml.tests;

import java.util.Arrays;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.textui.TestRunner;

import org.eclipse.ocl.Environment;
import org.eclipse.ocl.tests.GenericTestSuite.CheckedTestSuite;
import org.eclipse.ocl.uml.UMLEnvironmentFactory;

/**
 * Tests for the OCL engine plug-in using the backtracking parser.
 */
@SuppressWarnings("nls")
public class AllTestsBacktracking
	extends TestCase {

	public AllTestsBacktracking() {
		super("");
	}

	public static Test suite() {
		if (System.getProperty("standalone") != null) {
			// running tests stand-alone:  must set up the environment registry
			Environment.Registry.INSTANCE.registerEnvironment(
					new UMLEnvironmentFactory().createEnvironment());
		}
		System.setProperty(UMLTestReflection.PLUGIN_ID + ".repairs", "100");
    	String testSuiteName = System.getProperty("testSuiteName", "OCL Tests for UML Metamodel");
		CheckedTestSuite result = new CheckedTestSuite(testSuiteName);			
		AbstractTestSuite.suite(result);
		AbstractTestSuite.suiteBacktracking(result);
		return result;
	}

	public Object run(Object args)
		throws Exception {

		TestRunner.run(suite());
		return Arrays
			.asList(new String[] {"Please see raw test suite output for details."});
	}
}
