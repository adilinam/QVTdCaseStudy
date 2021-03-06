/*******************************************************************************
 * Copyright (c) 2005, 2014 IBM Corporation and others.
 * All rights reserved.   This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *   IBM - Initial API and implementation
 *******************************************************************************/

package org.eclipse.ocl.examples.interpreter.actions;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ocl.examples.interpreter.console.OCLConsole;
import org.eclipse.ocl.examples.interpreter.console.OCLConsoleFactory;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IEditorActionDelegate;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.actions.ActionDelegate;
import org.eclipse.ui.console.IConsoleFactory;


/**
 * Action delegate that ensures that the console view is active, with the
 * Interactive OCL console active within it.
 * 
 * @deprecated Use ShowConsoleHandler
 */
@Deprecated
public class ShowConsoleDelegate
	extends ActionDelegate implements IEditorActionDelegate {

	private IConsoleFactory factory = new OCLConsoleFactory();
	
	private Shell shell;
	
	/**
	 * Initializes me.
	 */
	public ShowConsoleDelegate() {
		super();
	}

	@Override
    public void run(IAction action) {
		factory.openConsole();
		
		if (null != shell) {
			shell.getDisplay().asyncExec(new Runnable() {
				public void run() {
					consoleOpened(OCLConsole.getInstance());
				}});
		}
	}
	
	protected void consoleOpened(OCLConsole console) {
	    // do nothing
	}

	public void setActiveEditor(IAction action, IEditorPart targetEditor) {
		if (null == targetEditor) {
			shell = null;
		} else {
			shell = targetEditor.getSite().getShell();
		}
	}

	@Override
    public void selectionChanged(IAction action, ISelection selection) {
		// not interesting
	}

}
