/*******************************************************************************
 * Copyright (c) 2013, 2015 Willink Transformations and others.
 * All rights reserved.   This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *   E.D.Willink - Initial API and implementation
 *   Adolfo Sanchez-Barbudo Herrera (University of York) - Lookup Environment/Visitor
 *******************************************************************************/
package org.eclipse.ocl.examples.autogen.java;

import java.util.List;

import org.eclipse.jdt.annotation.NonNull;
import org.eclipse.jdt.annotation.Nullable;
import org.eclipse.ocl.examples.codegen.analyzer.CodeGenAnalyzer;
import org.eclipse.ocl.examples.codegen.cgmodel.CGClass;
import org.eclipse.ocl.examples.codegen.cgmodel.CGPackage;
import org.eclipse.ocl.examples.codegen.cgmodel.CGValuedElement;
import org.eclipse.ocl.examples.codegen.java.CG2JavaVisitor;

/**
 * AutoCG2JavaVisitor refines the regular generation of Java code from an optimized Auto CG transformation tree
 * to add contributions that are inadequately represented by the CG model.
 */
public abstract class AutoCG2JavaVisitor<@NonNull CG extends AutoCodeGenerator> extends CG2JavaVisitor<CG>
{
	protected final @NonNull CodeGenAnalyzer analyzer;
	protected final @NonNull CGPackage cgPackage;
	protected final @Nullable List<CGValuedElement> sortedGlobals;
	
	public AutoCG2JavaVisitor(@NonNull CG codeGenerator, @NonNull CGPackage cgPackage,
			@Nullable List<CGValuedElement> sortedGlobals) {
		super(codeGenerator);
		this.analyzer = codeGenerator.getAnalyzer();
		this.cgPackage = cgPackage;
		this.sortedGlobals = sortedGlobals;
	}

	@Override
	final protected void doClassMethods(@NonNull CGClass cgClass) {
		doConstructor(cgClass);
		doMoreClassMethods(cgClass);
		super.doClassMethods(cgClass);
	}
	
	protected void doMoreClassMethods(@NonNull CGClass cgClass) {
		// doNothing
	}

	@Override
	protected void doClassStatics(@NonNull CGClass cgClass) {
		if (sortedGlobals != null) {
			for (CGValuedElement cgElement : sortedGlobals) {
				assert cgElement.isGlobal();
				cgElement.accept(this);
			}
			js.append("\n");
		}
	}
	
	protected abstract void doConstructor(@NonNull CGClass cgClass);
}
