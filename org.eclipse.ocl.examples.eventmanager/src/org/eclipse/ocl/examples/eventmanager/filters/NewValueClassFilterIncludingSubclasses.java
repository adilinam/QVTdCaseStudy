/*******************************************************************************
 * Copyright (c) 2009, 2014 SAP AG and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *     SAP AG - initial API and implementation
 ******************************************************************************/
package org.eclipse.ocl.examples.eventmanager.filters;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/**
 * Matches an event's {@link Notification#getNewValue()} to an
 * {@link EObject#eClass()} and all subclasses of this {@link EClass}. If the
 * new value is a collection then this filter matches if at least one of the
 * collection's elements is matched.
 * <p>
 * 
 * When several such filters are combined in an {@link AndFilter}, the
 * {@link AndFilter} matches if all of its operand filters match. This does not
 * require the individual {@link NewValueClassFilterIncludingSubclasses}s to
 * match based on the same element in case the new value happens to be a
 * collection. For example, assume there are two classes <code>X</code> and
 * <code>Y</code> with a class <code>Z</code> that has both, <code>X</code> and
 * <code>Y</code> as its superclasses (multiple inheritance). Assume there is an
 * {@link AndFilter} with two {@link NewValueClassFilterIncludingSubclasses}s
 * inside, one matching <code>X</code>, the other matching <code>Y</code>. If
 * only a single element is the new value of a {@link Notification}, the
 * {@link AndFilter} matches the notification if and only if the new value
 * conforms to both, <code>X</code> and <code>Y</code>, for example if its type
 * is <code>Z</code>. However, if there are two elements in the new value
 * collection of the {@link Notification}, one of type <code>X</code> and the
 * other of type <code>Y</code>, the first
 * {@link NewValueClassFilterIncludingSubclasses} matches because of the
 * <code>X</code> element, and the second
 * {@link NewValueClassFilterIncludingSubclasses} matches because of the
 * <code>Y</code> element and hence the {@link AndFilter} matches. However, no
 * single element in the new value collection fulfills both criteria.
 * 
 * @author Philipp Berger, Axel Uhl
 * 
 */
public class NewValueClassFilterIncludingSubclasses extends ClassFilterIncludingSubclasses {

    public NewValueClassFilterIncludingSubclasses(EClass subClass, boolean negated) {
        super(subClass, negated);
    }

    /*
     * (non-Javadoc)
     * 
     * @see java.lang.Object#equals(java.lang.Object)
     */
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        NewValueClassFilterIncludingSubclasses other = (NewValueClassFilterIncludingSubclasses) obj;
        return super.equals(other);
    }

    /*
     * (non-Javadoc)
     * 
     * @see java.lang.Object#hashCode()
     */
    @Override
    public int hashCode() {
        return 37 * super.hashCode();
    }

    public boolean matchesFor(Notification event) {
        if (event.getNewValue() instanceof EObject) {
            return matches(((EObject) event.getNewValue()).eClass());
        }
        if (event.getNewValue() instanceof EList<?>) {
            for (Object o : (EList<?>) event.getNewValue()) {
                if (o instanceof EObject && matches(((EObject) o).eClass())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override
    public String toString() {
        if (getWantedClass() != null)
            return "new value filter incl subs for new " + getWantedClass().toString();
        return "new value filter incl subs for undefined new";
    }

    @Override
    public NewValueClassFilterIncludingSubclasses clone() {
        return new NewValueClassFilterIncludingSubclasses(getWantedClass(), isNegated());
    }

} // NewValueClassFilterImpl
