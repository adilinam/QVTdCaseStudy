/*******************************************************************************
 * Copyright (c) 2009, 2014 SAP AG and others.
 * All rights reserved.   This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *   Axel Uhl - Initial API and implementation
 *******************************************************************************/
package org.eclipse.ocl.ecore.opposites;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.ocl.ecore.OCL;


/**
 * Uses {@link OppositeEndFinder#getAllInstancesSeenBy(EClass, org.eclipse.emf.common.notify.Notifier)} to perform
 * an extent lookup that is consistent with the visibility rules implemented by the {@link OppositeEndFinder}
 * for hidden opposites lookup and traversal.<p>
 * 
 * Usage:<p>
 * 
 * <pre>
 *   {@link OCL}.{@link OCL#setExtentMap(Map) setExtentMap}<code>(new ExtentMap(context, oppositeEndFinder))</code>
 * </pre>
 * 
 * in case there is a specific {@link OppositeEndFinder} to be used. In order to use the {@link DefaultOppositeEndFinder},
 * use
 * 
 * <pre>
 *   {@link OCL}.{@link OCL#setExtentMap(Map) setExtentMap}<code>(new ExtentMap(context))</code>
 * </pre>
 * 
 * @since 3.1
 */
public class ExtentMap implements Map<EClass, Set<EObject>> {
    private OppositeEndFinder oppositeEndFinder;
    private Notifier context;

    public ExtentMap(Notifier context, OppositeEndFinder oppositeEndFinder) {
        this.context = context;
        this.oppositeEndFinder = oppositeEndFinder;
    }
    
    /**
     * Uses a {@link DefaultOppositeEndFinder}
     * 
     * @param context the {@link EObject}, {@link Resource} or {@link ResourceSet} relative to which
     * the visibility rules are evaluated.
     */
    public ExtentMap(Notifier context) {
    	this(context, DefaultOppositeEndFinder.getInstance());
    }

    /**
     * Computes the extent of the specified class <code>key</code> based on a forward lookup on the
     * {@link OppositeEndFinder} passed to this map during construction. The collection returned is backed
     * by the underlying map, meaning that additions to <code>cls</code>'s extent add to the collection
     * returned, and removals from the extent remove from the collection.
     * 
     * @param cls
     *            a class in the model
     */
    public Set<EObject> get(Object cls) {
        return oppositeEndFinder.getAllInstancesSeenBy((EClass) cls, context);
    }

    public int size() {
        throw new UnsupportedOperationException("size() not supported on ExtentMap"); //$NON-NLS-1$
    }

    public boolean isEmpty() {
        throw new UnsupportedOperationException("isEmpty() not supported on ExtentMap"); //$NON-NLS-1$
    }

    public boolean containsKey(Object key) {
        throw new UnsupportedOperationException("containsKey() not supported on ExtentMap"); //$NON-NLS-1$
    }

    public boolean containsValue(Object value) {
        throw new UnsupportedOperationException("containsValue() not supported on ExtentMap"); //$NON-NLS-1$
    }

    public Set<EObject> put(EClass key, Set<EObject> value) {
        throw new UnsupportedOperationException("put() not supported on ExtentMap"); //$NON-NLS-1$
    }

    public Set<EObject> remove(Object key) {
        throw new UnsupportedOperationException("remove() not supported on ExtentMap"); //$NON-NLS-1$
    }

    public void putAll(Map<? extends EClass, ? extends Set<EObject>> m) {
        throw new UnsupportedOperationException("putAll() not supported on ExtentMap"); //$NON-NLS-1$
    }

    public void clear() {
        throw new UnsupportedOperationException("clear() not supported on ExtentMap"); //$NON-NLS-1$
    }

    public Set<EClass> keySet() {
        throw new UnsupportedOperationException("keySet() not supported on ExtentMap"); //$NON-NLS-1$
    }

    public Collection<Set<EObject>> values() {
        throw new UnsupportedOperationException("values() not supported on ExtentMap"); //$NON-NLS-1$
    }

    public Set<java.util.Map.Entry<EClass, Set<EObject>>> entrySet() {
        throw new UnsupportedOperationException("entrySet() not supported on ExtentMap"); //$NON-NLS-1$
    }
}
