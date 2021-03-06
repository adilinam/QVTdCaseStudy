/*******************************************************************************
 * Copyright (c) 2005, 2009 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *   IBM - Initial API and implementation
 *******************************************************************************/

package org.eclipse.ocl.ecore.helper.tests;


/**
 * Tests for the OCL engine plug-in.
 * 
 * @author Christian W. Damus (cdamus)
 */
@SuppressWarnings("nls")
public abstract class AbstractTestSuite
	extends org.eclipse.ocl.ecore.tests.AbstractTestSuite {

	public static CheckedTestSuite suite() {
		CheckedTestSuite result = new CheckedTestSuite("OCL Helper Tests");
		
		result.createTestSuite(OCLHelperTest.class, "Basic Tests");
		result.createTestSuite(ParsingTest.class, "Constraint Parsing Tests");
		result.createTestSuite(SyntaxHelpTest.class, "Syntax Help Tests");
		result.createTestSuite(EvaluationTest.class, "Constraint Evaluation Tests");
		result.createTestSuite(RegressionTest.class, "Regression Tests");
		
		return result;
	}
}
