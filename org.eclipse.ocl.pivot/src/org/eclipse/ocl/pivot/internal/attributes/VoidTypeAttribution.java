/*******************************************************************************
 * Copyright (c) 2011, 2014 Willink Transformations and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     E.D.Willink - initial API and implementation
 *******************************************************************************/
package org.eclipse.ocl.pivot.internal.attributes;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.jdt.annotation.NonNull;
import org.eclipse.ocl.pivot.internal.scoping.EnvironmentView;
import org.eclipse.ocl.pivot.internal.scoping.ScopeView;

public class VoidTypeAttribution extends ClassAttribution
{
	public static final VoidTypeAttribution INSTANCE = new VoidTypeAttribution();

	@Override
	public ScopeView computeLookup(@NonNull EObject target, @NonNull EnvironmentView environmentView, @NonNull ScopeView scopeView) {
		super.computeLookup(target, environmentView, scopeView);
/*		if (!environmentView.hasFinalResult()) {
			MetamodelManager metamodelManager = environmentView.getMetamodelManager();
			for (PackageServer packageServer : Lists.newArrayList(metamodelManager.getAllPackages())) {		// Avoid CME risk
				for (TypeServer typeServer : packageServer.getMemberTypes()) {
					Type primaryType = typeServer.getPivotType();
					environmentView.addAllOperations(primaryType, false);
					environmentView.addAllProperties(primaryType, false);
				}
			}
		} */
		return scopeView.getParent();
	}
}
