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
package data.classes;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Link Setting</b></em>'.
 * <!-- end-user-doc -->
 *
 * <!-- begin-model-doc -->
 * Replaces all links of the association of which the association end *end* is part and which connect to the object on which this implementation is invoked with their other end. The links are replaced by links from the object on which the implementation is invoked to the object(s) passed to this implementation as argument.
 * <!-- end-model-doc -->
 *
 *
 * @see data.classes.ClassesPackage#getLinkSetting()
 * @model annotation="http://www.eclipse.org/emf/2002/Ecore/OCL InputTypeMatchEndType='self.implements_.output->isEmpty() and\r\n  self.implements_.input->size() = 1 and \r\n  self.implements_.input->at(1).getType().oclIsKindOf(ClassTypeDefinition) and \r\n  self.implements_.input->at(1).getType().oclAsType(ClassTypeDefinition).clazz = self.end.type.clazz'"
 *        annotation="http://www.eclipse.org/emf/2002/Ecore constraints='InputTypeMatchEndType'"
 * @generated
 */
public interface LinkSetting extends ExtentModifyingAssociationEndSignatureImplementation {
} // LinkSetting
