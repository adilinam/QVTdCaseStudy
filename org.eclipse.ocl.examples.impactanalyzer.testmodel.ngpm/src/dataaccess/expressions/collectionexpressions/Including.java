/*******************************************************************************
 * Copyright (c) 2009, 2014 SAP AG and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *     SAP AG - initial API and implementation
 ******************************************************************************
 */
package dataaccess.expressions.collectionexpressions;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Including</b></em>'.
 * <!-- end-user-doc -->
 *
 * <!-- begin-model-doc -->
 * Produces a new value which includes the *argument* object. If the *argument* object was already included in the *source* and the multiplicity of the *source* has the *unique* attribute set to *true*, the *what* object will not be added a second time and the resulting expression will be equal to the *source* expression's value.
 * 
 * If the *source* expression had multiplicity 1, the resulting expression's multiplicity is *, regardless of whether an object actually gets added.
 * <!-- end-model-doc -->
 *
 *
 * @see dataaccess.expressions.collectionexpressions.CollectionexpressionsPackage#getIncluding()
 * @model
 * @generated
 */
public interface Including extends CollectionExpressionWithArgument {
} // Including
