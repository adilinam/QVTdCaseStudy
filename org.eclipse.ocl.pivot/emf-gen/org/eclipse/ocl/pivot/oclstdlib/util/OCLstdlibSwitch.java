/*******************************************************************************
 * Copyright (c) 2014, 2015 Willink Transformations and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     E.D.Willink - initial API and implementation
 *******************************************************************************/
/**
 */
package org.eclipse.ocl.pivot.oclstdlib.util;

import java.util.Collection;
import java.util.List;
import java.util.Set;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.Switch;
import org.eclipse.jdt.annotation.Nullable;
import org.eclipse.ocl.pivot.oclstdlib.OCLstdlibPackage;
import org.eclipse.ocl.pivot.values.Bag;
import org.eclipse.ocl.pivot.values.OrderedSet;

/**
 * <!-- begin-user-doc -->
 * The <b>Switch</b> for the model's inheritance hierarchy.
 * It supports the call {@link #doSwitch(EObject) doSwitch(object)}
 * to invoke the <code>caseXXX</code> method for each class of the model,
 * starting with the actual class of the object
 * and proceeding up the inheritance hierarchy
 * until a non-null result is returned,
 * which is the result of the switch.
 * <!-- end-user-doc -->
 * @see org.eclipse.ocl.pivot.oclstdlib.OCLstdlibPackage
 * @generated
 */
public class OCLstdlibSwitch<@Nullable T1> extends Switch<T1> {
	/**
	 * The cached model package
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected static OCLstdlibPackage modelPackage;

	/**
	 * Creates an instance of the switch.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public OCLstdlibSwitch() {
		if (modelPackage == null) {
			modelPackage = OCLstdlibPackage.eINSTANCE;
		}
	}

	/**
	 * Checks whether this is a switch for the given package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param ePackage the package in question.
	 * @return whether this is a switch for the given package.
	 * @generated
	 */
	@Override
	protected boolean isSwitchFor(EPackage ePackage) {
		return ePackage == modelPackage;
	}

	/**
	 * Calls <code>caseXXX</code> for each class of the model until one returns a non null result; it yields that result.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the first non-null result returned by a <code>caseXXX</code> call.
	 * @generated
	 */
	@SuppressWarnings("cast")
	@Override
	protected T1 doSwitch(int classifierID, EObject theEObject) {
		switch (classifierID) {
			case OCLstdlibPackage.BAG: {
				Bag<?> bag = (Bag<?>)theEObject;
				T1 result = caseBag(bag);
				if (result == null) result = caseCollection(bag);
				if (result == null) result = caseOclAny(bag);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.COLLECTION: {
				Collection<?> collection = (Collection<?>)theEObject;
				T1 result = caseCollection(collection);
				if (result == null) result = caseOclAny(collection);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.OCL_ANY: {
				Object oclAny = (Object)theEObject;
				T1 result = caseOclAny(oclAny);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.OCL_COMPARABLE: {
				Object oclComparable = (Object)theEObject;
				T1 result = caseOclComparable(oclComparable);
				if (result == null) result = caseOclAny(oclComparable);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.OCL_ELEMENT: {
				Object oclElement = (Object)theEObject;
				T1 result = caseOclElement(oclElement);
				if (result == null) result = caseOclAny(oclElement);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.OCL_INVALID: {
				Object oclInvalid = (Object)theEObject;
				T1 result = caseOclInvalid(oclInvalid);
				if (result == null) result = caseOclVoid(oclInvalid);
				if (result == null) result = caseOclAny(oclInvalid);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.OCL_LAMBDA: {
				Object oclLambda = (Object)theEObject;
				T1 result = caseOclLambda(oclLambda);
				if (result == null) result = caseOclAny(oclLambda);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.OCL_MESSAGE: {
				Object oclMessage = (Object)theEObject;
				T1 result = caseOclMessage(oclMessage);
				if (result == null) result = caseOclAny(oclMessage);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.OCL_STATE: {
				Object oclState = (Object)theEObject;
				T1 result = caseOclState(oclState);
				if (result == null) result = caseOclAny(oclState);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.OCL_SUMMABLE: {
				Object oclSummable = (Object)theEObject;
				T1 result = caseOclSummable(oclSummable);
				if (result == null) result = caseOclAny(oclSummable);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.OCL_TUPLE: {
				Object oclTuple = (Object)theEObject;
				T1 result = caseOclTuple(oclTuple);
				if (result == null) result = caseOclAny(oclTuple);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.OCL_TYPE: {
				Object oclType = (Object)theEObject;
				T1 result = caseOclType(oclType);
				if (result == null) result = caseOclElement(oclType);
				if (result == null) result = caseOclAny(oclType);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.OCL_VOID: {
				Object oclVoid = (Object)theEObject;
				T1 result = caseOclVoid(oclVoid);
				if (result == null) result = caseOclAny(oclVoid);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.ORDERED_COLLECTION: {
				Collection<?> orderedCollection = (Collection<?>)theEObject;
				T1 result = caseOrderedCollection(orderedCollection);
				if (result == null) result = caseCollection(orderedCollection);
				if (result == null) result = caseOclAny(orderedCollection);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.ORDERED_SET: {
				OrderedSet<?> orderedSet = (OrderedSet<?>)theEObject;
				T1 result = caseOrderedSet(orderedSet);
				if (result == null) result = caseOrderedCollection(orderedSet);
				if (result == null) result = caseUniqueCollection(orderedSet);
				if (result == null) result = caseCollection(orderedSet);
				if (result == null) result = caseOclAny(orderedSet);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.SEQUENCE: {
				List<?> sequence = (List<?>)theEObject;
				T1 result = caseSequence(sequence);
				if (result == null) result = caseOrderedCollection(sequence);
				if (result == null) result = caseCollection(sequence);
				if (result == null) result = caseOclAny(sequence);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.SET: {
				Set<?> set = (Set<?>)theEObject;
				T1 result = caseSet(set);
				if (result == null) result = caseUniqueCollection(set);
				if (result == null) result = caseCollection(set);
				if (result == null) result = caseOclAny(set);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case OCLstdlibPackage.UNIQUE_COLLECTION: {
				Collection<?> uniqueCollection = (Collection<?>)theEObject;
				T1 result = caseUniqueCollection(uniqueCollection);
				if (result == null) result = caseCollection(uniqueCollection);
				if (result == null) result = caseOclAny(uniqueCollection);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			default: return defaultCase(theEObject);
		}
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Bag</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Bag</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public <T> T1 caseBag(Bag<T> object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Collection</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Collection</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public <T> T1 caseCollection(Collection<T> object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ocl Any</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ocl Any</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T1 caseOclAny(Object object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ocl Comparable</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ocl Comparable</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T1 caseOclComparable(Object object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ocl Element</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ocl Element</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T1 caseOclElement(Object object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ocl Invalid</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ocl Invalid</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T1 caseOclInvalid(Object object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ocl Lambda</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ocl Lambda</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T1 caseOclLambda(Object object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ocl Message</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ocl Message</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T1 caseOclMessage(Object object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ocl State</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ocl State</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T1 caseOclState(Object object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ocl Summable</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ocl Summable</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T1 caseOclSummable(Object object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ocl Tuple</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ocl Tuple</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T1 caseOclTuple(Object object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ocl Type</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ocl Type</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T1 caseOclType(Object object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ocl Void</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ocl Void</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public T1 caseOclVoid(Object object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ordered Collection</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ordered Collection</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public <T> T1 caseOrderedCollection(Collection<T> object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Ordered Set</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Ordered Set</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public <T> T1 caseOrderedSet(OrderedSet<T> object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Sequence</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Sequence</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public <T> T1 caseSequence(List<T> object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Set</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Set</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public <T> T1 caseSet(Set<T> object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Unique Collection</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Unique Collection</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public <T> T1 caseUniqueCollection(Collection<T> object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EObject</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch, but this is the last case anyway.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EObject</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject)
	 * @generated
	 */
	@Override
	public T1 defaultCase(EObject object) {
		return null;
	}

} //OCLstdlibSwitch
