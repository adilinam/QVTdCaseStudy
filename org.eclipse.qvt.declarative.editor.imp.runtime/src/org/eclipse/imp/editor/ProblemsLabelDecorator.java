/*******************************************************************************
* Copyright (c) 2007 IBM Corporation.
* All rights reserved. This program and the accompanying materials
* are made available under the terms of the Eclipse Public License v1.0
* which accompanies this distribution, and is available at
* http://www.eclipse.org/legal/epl-v10.html
*
* Contributors:
*    Robert Fuhrer (rfuhrer@watson.ibm.com) - initial API and implementation
*******************************************************************************/

package org.eclipse.imp.editor;

import java.util.Iterator;

import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceStatus;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.imp.editor.internal.ImageDecoratorController;
import org.eclipse.imp.language.Language;
import org.eclipse.imp.language.ServiceFactory;
import org.eclipse.imp.model.ICompilationUnit;
import org.eclipse.imp.model.ISourceEntity;
import org.eclipse.imp.runtime.ImageDescriptorRegistry;
import org.eclipse.imp.runtime.PluginImages;
import org.eclipse.imp.runtime.RuntimePlugin;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IDecoration;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.texteditor.MarkerAnnotation;

/**
 * Decorates an image of a program element to indicate any related errors/warnings.
 * See org.eclipse.jdt.ui.ProblemsLabelDecorator for inspiration.
 * @author rfuhrer@watson.ibm.com
 */
public class ProblemsLabelDecorator implements ILabelDecorator {
    /**
     * This is a special <code>LabelProviderChangedEvent</code> carrying additional 
     * information whether the event originates from a marker change.
     * <p>
     * <code>ProblemsLabelChangedEvent</code>s are only generated by <code>
     * ProblemsLabelDecorator</code>s.
     * </p>
     */
    public static class ProblemsLabelChangedEvent extends LabelProviderChangedEvent {
        private static final long serialVersionUID= 1L;

        private boolean fMarkerChange;

        /**
         * Note: This constructor is for internal use only. Clients should not call this constructor.
         * 
         * @param eventSource the base label provider
         * @param changedResource the changed resources
         * @param isMarkerChange <code>true<code> if the change is a marker change; otherwise
         *  <code>false</code> 
         */
        public ProblemsLabelChangedEvent(IBaseLabelProvider eventSource, IResource[] changedResource, boolean isMarkerChange) {
            super(eventSource, changedResource);
            fMarkerChange= isMarkerChange;
        }

        /**
         * Returns whether this event origins from marker changes. If <code>false</code> an annotation 
         * model change is the origin. In this case viewers not displaying working copies can ignore these 
         * events.
         * 
         * @return if this event origins from a marker change.
         */
        public boolean isMarkerChange() {
            return fMarkerChange;
        }
    }

    private static final int ERRORTICK_WARNING= 0;

    private static final int ERRORTICK_ERROR= 1;

    private ImageDescriptorRegistry fRegistry;

    private ImageDecoratorController fDecoratorController;

    private boolean fUseNewRegistry= false;

    private IProblemChangedListener fProblemChangedListener;

    private ListenerList fListeners;

    public ProblemsLabelDecorator(Language lang) {
        fRegistry= null;
        fProblemChangedListener= null;
        fUseNewRegistry= true;
        fDecoratorController= new ImageDecoratorController(lang);
    }

    private ImageDescriptorRegistry getRegistry() {
        if (fRegistry == null) {
            fRegistry= fUseNewRegistry ? new ImageDescriptorRegistry() : RuntimePlugin.getImageDescriptorRegistry();
        }
        return fRegistry;
    }

    /* (non-Javadoc)
     * @see ILabelDecorator#decorateText(String, Object)
     */
    public String decorateText(String text, Object element) {
        return text;
    }

    /* (non-Javadoc)
     * @see ILabelDecorator#decorateImage(Image, Object)
     */
    public Image decorateImage(Image image, Object obj) {
        int adornmentFlags= computeAdornmentFlags(obj);
        if (adornmentFlags != 0) {
            ImageDescriptor baseImage= new ImageImageDescriptor(image);
            Rectangle bounds= image.getBounds();
            Point ptBounds= new Point(bounds.width, bounds.height);
            return getRegistry().get(fDecoratorController.getImageDescriptor(baseImage, obj, ptBounds));
        }
        return image;
    }

    /**
     * Note: This method is for internal use only. Clients should not call this method.
     * 
     * @param obj the element to compute the flags for
     * 
     * @return the adornment flags
     */
    protected int computeAdornmentFlags(Object obj) {
        try {
            if (obj instanceof ISourceEntity) {
                ISourceEntity element= (ISourceEntity) obj;
                IResource res= element.getResource();
                int depth= IResource.DEPTH_INFINITE;
                if (element instanceof ICompilationUnit) {
                    depth= IResource.DEPTH_ONE;
                }
                return getErrorTicksFromMarkers(res, depth);
            } else if (obj instanceof IResource) {
                return getErrorTicksFromMarkers((IResource) obj, IResource.DEPTH_INFINITE);
            }
        } catch (CoreException e) {
            if (e.getStatus().getCode() == IResourceStatus.MARKER_NOT_FOUND) {
                return 0;
            }
            RuntimePlugin.getInstance().logException("", e);
        }
        return 0;
    }

    // TODO The following code used to use the given ISourceReference to determine which markers
    // lay within the source range of the given entity. We don't yet have ISourceEntity's for
    // anything smaller than a compilation unit, so that functionality will have to wait for an
    // API enhancement.
    private int getErrorTicksFromMarkers(IResource res, int depth /*, ISourceReference sourceElement*/) throws CoreException {
        if (res == null || !res.isAccessible()) {
            return 0;
        }
        int info= 0;
        IMarker[] markers= res.findMarkers(IMarker.PROBLEM, true, depth);
        if (markers != null) {
            for(int i= 0; i < markers.length && (info != ERRORTICK_ERROR); i++) {
                IMarker curr= markers[i];
//              if (sourceElement == null || isMarkerInRange(curr, sourceElement)) {
                    int priority= curr.getAttribute(IMarker.SEVERITY, -1);
                    if (priority == IMarker.SEVERITY_WARNING) {
                        info= ERRORTICK_WARNING;
                    } else if (priority == IMarker.SEVERITY_ERROR) {
                        info= ERRORTICK_ERROR;
                    }
//              }
            }
        }
        return info;
    }

//    private boolean isMarkerInRange(IMarker marker, ISourceReference sourceElement) throws CoreException {
//        if (marker.isSubtypeOf(IMarker.TEXT)) {
//            int pos= marker.getAttribute(IMarker.CHAR_START, -1);
//            return isInside(pos, sourceElement);
//        }
//        return false;
//    }

//    private IAnnotationModel isInJavaAnnotationModel(ICompilationUnit original) {
//        if (original.isWorkingCopy()) {
//            FileEditorInput editorInput= new FileEditorInput((IFile) original.getResource());
//            return JavaPlugin.getDefault().getCompilationUnitDocumentProvider().getAnnotationModel(editorInput);
//        }
//        return null;
//    }

    private int getErrorTicksFromAnnotationModel(IAnnotationModel model /*, ISourceReference sourceElement*/) throws CoreException {
        int info= 0;
        Iterator iter= model.getAnnotationIterator();
        while ((info != ERRORTICK_ERROR) && iter.hasNext()) {
            Annotation annot= (Annotation) iter.next();
            IMarker marker= isAnnotationInRange(model, annot /*, sourceElement */);
            if (marker != null) {
                int priority= marker.getAttribute(IMarker.SEVERITY, -1);
                if (priority == IMarker.SEVERITY_WARNING) {
                    info= ERRORTICK_WARNING;
                } else if (priority == IMarker.SEVERITY_ERROR) {
                    info= ERRORTICK_ERROR;
                }
            }
        }
        return info;
    }

    private IMarker isAnnotationInRange(IAnnotationModel model, Annotation annot /*, ISourceReference sourceElement */) throws CoreException {
        if (annot instanceof MarkerAnnotation) {
//          if (sourceElement == null || isInside(model.getPosition(annot), sourceElement)) {
                IMarker marker= ((MarkerAnnotation) annot).getMarker();
                if (marker.exists() && marker.isSubtypeOf(IMarker.PROBLEM)) {
                    return marker;
                }
//          }
        }
        return null;
    }

//    private boolean isInside(Position pos, ISourceReference sourceElement) throws CoreException {
//        return pos != null && isInside(pos.getOffset(), sourceElement);
//    }

//    /**
//     * Tests if a position is inside the source range of an element.
//     * @param pos Position to be tested.
//     * @param sourceElement Source element (must be a IJavaElement)
//     * @return boolean Return <code>true</code> if position is located inside the source element.
//     * @throws CoreException Exception thrown if element range could not be accessed.
//     * 
//     * @since 2.1
//     */
//    protected boolean isInside(int pos, ISourceReference sourceElement) throws CoreException {
//        if (fCachedRange == null) {
//            fCachedRange= sourceElement.getSourceRange();
//        }
//        ISourceRange range= fCachedRange;
//        if (range != null) {
//            int rangeOffset= range.getOffset();
//            return (rangeOffset <= pos && rangeOffset + range.getLength() > pos);
//        }
//        return false;
//    }

    /* (non-Javadoc)
     * @see IBaseLabelProvider#dispose()
     */
    public void dispose() {
        if (fProblemChangedListener != null) {
            // TODO RMF reenable
            //	    JavaPlugin.getDefault().getProblemMarkerManager().removeListener(fProblemChangedListener);
            fProblemChangedListener= null;
        }
        if (fRegistry != null && fUseNewRegistry) {
            fRegistry.dispose();
        }
    }

    /* (non-Javadoc)
     * @see IBaseLabelProvider#isLabelProperty(Object, String)
     */
    public boolean isLabelProperty(Object element, String property) {
        return true;
    }

    /* (non-Javadoc)
     * @see IBaseLabelProvider#addListener(ILabelProviderListener)
     */
    public void addListener(ILabelProviderListener listener) {
        if (fListeners == null) {
            fListeners= new ListenerList();
        }
        fListeners.add(listener);
        if (fProblemChangedListener == null) {
            fProblemChangedListener= new IProblemChangedListener() {
                public void problemsChanged(IResource[] changedResources, boolean isMarkerChange) {
                    fireProblemsChanged(changedResources, isMarkerChange);
                }
            };
            // TODO RMF reenable
            //	    JavaPlugin.getDefault().getProblemMarkerManager().addListener(fProblemChangedListener);
        }
    }

    /* (non-Javadoc)
     * @see IBaseLabelProvider#removeListener(ILabelProviderListener)
     */
    public void removeListener(ILabelProviderListener listener) {
        if (fListeners != null) {
            fListeners.remove(listener);
            if (fListeners.isEmpty() && fProblemChangedListener != null) {
                // TODO RMF reenable
                //		JavaPlugin.getDefault().getProblemMarkerManager().removeListener(fProblemChangedListener);
                fProblemChangedListener= null;
            }
        }
    }

    private void fireProblemsChanged(IResource[] changedResources, boolean isMarkerChange) {
        if (fListeners != null && !fListeners.isEmpty()) {
            LabelProviderChangedEvent event= new ProblemsLabelChangedEvent(this, changedResources, isMarkerChange);
            Object[] listeners= fListeners.getListeners();
            for(int i= 0; i < listeners.length; i++) {
                ((ILabelProviderListener) listeners[i]).labelProviderChanged(event);
            }
        }
    }

    /* (non-Javadoc)
     * @see org.eclipse.jface.viewers.ILightweightLabelDecorator#decorate(java.lang.Object, org.eclipse.jface.viewers.IDecoration)
     */
    public void decorate(Object element, IDecoration decoration) {
        int adornmentFlags= computeAdornmentFlags(element);
        if (adornmentFlags == ERRORTICK_ERROR) {
            decoration.addOverlay(PluginImages.DESC_OVR_ERROR);
        } else if (adornmentFlags == ERRORTICK_WARNING) {
            decoration.addOverlay(PluginImages.DESC_OVR_WARNING);
        }
    }
}
