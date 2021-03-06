/*******************************************************************************
 * Copyright (c) 2009, 2012 SAP AG and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *     SAP AG - initial API and implementation
 ******************************************************************************/
package org.eclipse.ocl.examples.impactanalyzer.instanceScope.traceback;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.Stack;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.ocl.ecore.OCLExpression;
import org.eclipse.ocl.ecore.PropertyCallExp;
import org.eclipse.ocl.ecore.TupleType;
import org.eclipse.ocl.examples.impactanalyzer.impl.OperationBodyToCallMapper;
import org.eclipse.ocl.examples.impactanalyzer.instanceScope.unusedEvaluation.UnusedEvaluationRequestFactory;
import org.eclipse.ocl.examples.impactanalyzer.instanceScope.unusedEvaluation.UnusedEvaluationRequestSet;
import org.eclipse.ocl.examples.impactanalyzer.util.AnnotatedEObject;
import org.eclipse.ocl.examples.impactanalyzer.util.OCLFactory;
import org.eclipse.ocl.examples.impactanalyzer.util.OperationCallExpKeyedSet;


public class PropertyCallTracebackStep extends AbstractTracebackStep<PropertyCallExp> {
    private enum Strategy { TUPLE, OPPOSITE_MANY, OPPOSITE_SINGLE, CONTAINMENT, HIDDEN_OPPOSITE };
    private final TracebackStepAndScopeChange nextStep;
    private final PropertyCallExp sourceExpression;
    private final EReference oppositeReference;
    private final Strategy strategy;

    public PropertyCallTracebackStep(PropertyCallExp sourceExpression, EClass context,
            OperationBodyToCallMapper operationBodyToCallMapper, Stack<String> tupleLiteralNamesToLookFor,
            TracebackStepCache tracebackStepCache, UnusedEvaluationRequestFactory unusedEvaluationRequestFactory, OCLFactory oclFactory) {
        super(sourceExpression, tupleLiteralNamesToLookFor, tracebackStepCache.getOppositeEndFinder(), operationBodyToCallMapper, unusedEvaluationRequestFactory, oclFactory);
        this.sourceExpression = sourceExpression;
        OCLExpression source = (OCLExpression) sourceExpression.getSource();
        Stack<String> tupleLiteralNames;
        if (source.getType() instanceof TupleType) {
            if (tupleLiteralNamesToLookFor == null) {
                tupleLiteralNames = new Stack<String>();
            } else {
                tupleLiteralNames = cloneWithTypeCheck(tupleLiteralNamesToLookFor);
            }
            tupleLiteralNames.push(sourceExpression.getReferredProperty().getName());
        } else {
            tupleLiteralNames = tupleLiteralNamesToLookFor;
        }
        if (sourceExpression.getReferredProperty() instanceof EReference) {
            oppositeReference = ((EReference) sourceExpression.getReferredProperty()).getEOpposite();
        } else {
            oppositeReference = null;
        }
        nextStep = createTracebackStepAndScopeChange(sourceExpression, source, context, operationBodyToCallMapper,
                tupleLiteralNames, tracebackStepCache);
        strategy = determineStrategy();
    }

    private Strategy determineStrategy() {
        Strategy result;
        EStructuralFeature feature = sourceExpression.getReferredProperty();
        if (sourceExpression.getSource().getType() instanceof TupleType) {
            result = Strategy.TUPLE;
        } else if (feature instanceof EAttribute){
            // From the comment of EAttribute:
            // "The {@link #getEType() type} of an attribute must always be a data type; this method provides access to it."
            // Together with the validation rules for EAttributes this ensures that attributes only have data types
            // as their types. Therefore, they can never have EObjects as their values.
            throw new IllegalArgumentException("An EAttribute should never be reached while traceback.");
        } else if (feature instanceof EReference) {
            EReference ref = (EReference) feature;
            if (ref.getEOpposite() != null){
                if (ref.getEOpposite().isMany()){
                    result = Strategy.OPPOSITE_MANY;
                } else {
                    result = Strategy.OPPOSITE_SINGLE;
                }
            } else if (ref.isContainment()) {
                result = Strategy.CONTAINMENT;
            } else {
                result = Strategy.HIDDEN_OPPOSITE;
            }
        } else {
            throw new RuntimeException("Don't know what type of feature this is: "+feature);
        }
        return result;
    }

    @Override
    protected OperationCallExpKeyedSet performSubsequentTraceback(AnnotatedEObject source,
            UnusedEvaluationRequestSet pendingUnusedEvalRequests, org.eclipse.ocl.examples.impactanalyzer.instanceScope.traceback.TracebackCache tracebackCache, Notification changeEvent) {
        OperationCallExpKeyedSet result = tracebackCache.getOperationCallExpKeyedSetFactory().emptySet();
        switch (strategy) {
        case TUPLE:
            result = nextStep.traceback(annotateEObject(source), pendingUnusedEvalRequests, tracebackCache, changeEvent);
            break;
        case OPPOSITE_MANY:
            Object o = source.eGet(oppositeReference);
            if (o instanceof EList<?>) {
                @SuppressWarnings("unchecked")
                EList<EObject> refObjects = (EList<EObject>) o;
                Set<OperationCallExpKeyedSet> resultSets = new HashSet<OperationCallExpKeyedSet>();
                for (EObject obj : refObjects) {
                    resultSets.add(nextStep.traceback(annotateEObject(source, obj), pendingUnusedEvalRequests, tracebackCache, changeEvent));
                }
                result = tracebackCache.getOperationCallExpKeyedSetFactory().createOperationCallExpKeyedSet(resultSets);
            }
            break;
        case OPPOSITE_SINGLE:
            EObject oSingle = (EObject) source.eGet(oppositeReference);
            if (oSingle != null) {
                result = nextStep.traceback(annotateEObject(source, oSingle), pendingUnusedEvalRequests, tracebackCache, changeEvent);
            }
            break;
        case CONTAINMENT:
            EObject container = source.eContainer();
            if (container != null) {
                result = nextStep.traceback(annotateEObject(source, container), pendingUnusedEvalRequests, tracebackCache, changeEvent);
            }
            break;
        case HIDDEN_OPPOSITE:
            Collection<EObject> opposite = getOppositeEndFinder().navigateOppositePropertyWithBackwardScope(
                    (EReference) sourceExpression.getReferredProperty(), source.getAnnotatedObject());
            if (opposite != null && !opposite.isEmpty()) {
                Set<OperationCallExpKeyedSet> resultSets = new HashSet<OperationCallExpKeyedSet>();
                for (EObject eo : opposite) {
                    resultSets.add(nextStep.traceback(annotateEObject(source, eo), pendingUnusedEvalRequests, tracebackCache, changeEvent));
                }
                result = tracebackCache.getOperationCallExpKeyedSetFactory().createOperationCallExpKeyedSet(resultSets);
            }
            break;
        default:
            throw new RuntimeException("Unknown property call traceback strategy "+strategy);
        }
        return result;
    }

}
