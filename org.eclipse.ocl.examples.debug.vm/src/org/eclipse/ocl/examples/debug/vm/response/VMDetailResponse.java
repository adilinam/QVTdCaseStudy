/*******************************************************************************
 * Copyright (c) 2014 Willink Transformations and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     R.Dvorak and others - QVTo debugger framework
 *     E.D.Willink - revised API for OCL debugger framework
 *******************************************************************************/
package org.eclipse.ocl.examples.debug.vm.response;

import org.eclipse.jdt.annotation.NonNull;

public class VMDetailResponse extends VMResponse
{
	private static final long serialVersionUID = 7356036134546546971L;

	private final @NonNull String fDetail;
	
	public VMDetailResponse(@NonNull String detail) {
		fDetail = detail;
	}

	public String getDetail() {
		return fDetail;
	}
	
	public String toString() {
		return getClass().getSimpleName() + "(" + toStatusString(status) + ", " + fDetail + ")";
	}
}
