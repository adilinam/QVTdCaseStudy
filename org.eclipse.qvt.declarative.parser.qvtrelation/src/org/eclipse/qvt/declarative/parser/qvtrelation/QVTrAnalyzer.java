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
package org.eclipse.qvt.declarative.parser.qvtrelation;

import lpg.runtime.Monitor;

import org.eclipse.qvt.declarative.parser.environment.ICSTFileAnalyzer;
import org.eclipse.qvt.declarative.parser.qvtrelation.environment.QVTrFileEnvironment;
import org.eclipse.qvt.declarative.parser.qvtrelation.environment.QVTrTopLevelEnvironment;

public class QVTrAnalyzer extends AbstractQVTrAnalyzer implements ICSTFileAnalyzer<QVTrTopLevelEnvironment>
{
	public QVTrAnalyzer(QVTrFileEnvironment environment, Monitor monitor) {
		super(new QVTrParser(new QVTrLexer(environment)), monitor);
	}

	public boolean analyze(QVTrTopLevelEnvironment environment) {
		defineTopLevelCS(environment);
		return true;
	}
}
