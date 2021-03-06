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
package org.eclipse.qvt.declarative.editor.ui.text;

import org.eclipse.jface.text.rules.IWordDetector;

/**
 * Defines a detector for QVT keywords.
 */
@Deprecated // Use UniversalTextEditor
public class TextKeywordDetector implements IWordDetector {

public TextKeywordDetector() {}
public boolean isWordPart(char c) {
	return Character.isJavaIdentifierPart(c) || c == '-';	
}
public boolean isWordStart(char c) {
	return Character.isJavaIdentifierStart(c);	
}
}
