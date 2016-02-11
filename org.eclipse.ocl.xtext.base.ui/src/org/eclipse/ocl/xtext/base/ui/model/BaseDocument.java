/*******************************************************************************
 * Copyright (c) 2010, 2015 Willink Transformations and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     E.D.Willink - initial API and implementation
 *******************************************************************************/
package org.eclipse.ocl.xtext.base.ui.model;

import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.jdt.annotation.NonNull;
import org.eclipse.jdt.annotation.Nullable;
import org.eclipse.ocl.pivot.internal.context.EInvocationContext;
import org.eclipse.ocl.pivot.internal.context.EObjectContext;
import org.eclipse.ocl.pivot.internal.scoping.Attribution;
import org.eclipse.ocl.pivot.internal.utilities.PivotUtilInternal;
import org.eclipse.ocl.pivot.resource.ASResource;
import org.eclipse.ocl.xtext.base.attributes.RootCSAttribution;
import org.eclipse.ocl.xtext.base.cs2as.CS2AS;
import org.eclipse.ocl.xtext.base.ui.BaseUiModule;
import org.eclipse.ocl.xtext.base.utilities.BaseCSResource;
import org.eclipse.ocl.xtext.base.utilities.ElementUtil;
import org.eclipse.ocl.xtext.basecs.ElementCS;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.resource.XtextSyntaxDiagnostic;
import org.eclipse.xtext.ui.editor.model.DocumentTokenSource;
import org.eclipse.xtext.ui.editor.model.XtextDocument;
import org.eclipse.xtext.ui.editor.model.edit.ITextEditComposer;
import org.eclipse.xtext.util.concurrent.IUnitOfWork;

import com.google.inject.Inject;

public class BaseDocument extends XtextDocument implements ConsoleContext
{
	private @Nullable EObject context;
    private @Nullable Map<String, EClassifier> parameters;

    @Inject
	public BaseDocument(DocumentTokenSource tokenSource, ITextEditComposer composer) {
		super(tokenSource, composer);
	}

	protected void checkForErrors(Resource resource) throws CoreException {
		List<Resource.Diagnostic> errors = resource.getErrors();
		if (errors.size() > 0) {
			StringBuilder s = new StringBuilder();
			for (Resource.Diagnostic diagnostic : errors) {
				s.append("\n");
				if (diagnostic instanceof XtextSyntaxDiagnostic) {
					s.append("Syntax error: ");
					String location = diagnostic.getLocation();
					if (location != null) {
						s.append(location);
						s.append(":");
					}
					s.append(diagnostic.getLine());
					s.append(" ");
					s.append(diagnostic.getMessage());
				}
				else {
					s.append(diagnostic.toString());
				}
			}
			throw new CoreException(new Status(IStatus.ERROR, BaseUiModule.PLUGIN_ID, s.toString()));
		}
	}

/*	@Override
	public void disposeInput() { -- should happen via BaseDocumentProvider.disconnected
		MetamodelManager metamodelManager = readOnly(new IUnitOfWork<MetamodelManager, XtextResource>()
			{
				@Override
				public MetamodelManager exec(@Nullable XtextResource resource) throws Exception {
					if (resource != null) {
						EnvironmentFactoryAdapter adapter = EnvironmentFactoryAdapter.find(resource);
						if (adapter != null) {
							return adapter.getMetamodelManager();
						}
					}
					return null;
				}
			});
		if (metamodelManager != null) {
			metamodelManager.dispose();
		}
		super.disposeInput();
	} */

	public @Nullable ASResource getASResource() throws CoreException {
		return readOnly(new IUnitOfWork<@Nullable ASResource, @Nullable XtextResource>()
			{
				@Override
				public ASResource exec(@Nullable XtextResource resource) throws Exception {
					if (!(resource instanceof BaseCSResource)) {
						return null;
					}
					BaseCSResource csResource = (BaseCSResource)resource;
					CS2AS cs2as = csResource.findCS2AS();
					if (cs2as  == null) {
						return null;
					}
					ASResource asResource = cs2as.getASResource();
					checkForErrors(asResource);
					return asResource;
				}
			});
	}

	protected RootCSAttribution getDocumentAttribution() {
		return readOnly(new IUnitOfWork<RootCSAttribution, XtextResource>()
			{
				@Override
				public RootCSAttribution exec(@Nullable XtextResource resource) throws Exception {
					if ((resource != null) && !resource.getContents().isEmpty()) {
						ElementCS csElement = (ElementCS) resource.getContents().get(0);
						if (csElement != null) {
							@SuppressWarnings("unused")
							Attribution attribution = PivotUtilInternal.getAttribution(csElement);
//							if (attribution != null) {
								return ElementUtil.getDocumentAttribution(csElement);
//							}
						}
					}
					return null;
				}
			});
	}

    @Override
	public @Nullable EObject getOCLContext() {
        return context;
    }

    @Override
	public @Nullable Map<String, EClassifier> getOCLParameters() {
		return parameters;
	}

	public @Nullable ResourceSet getResourceSet() {
		return readOnly(new IUnitOfWork<@Nullable ResourceSet, @Nullable XtextResource>()
			{
				@Override
				public ResourceSet exec(@Nullable XtextResource resource) throws Exception {
					return resource != null ? resource.getResourceSet() : null;
				}
			});
	}

	/**
	 * Write the XMI representation of the Pivot to be saved.
	 */
	public void saveAsPivot(@NonNull StringWriter writer) throws CoreException, IOException {
		XMLResource asResource = getASResource();
		if (asResource != null) {
			asResource.save(writer, null);
		}
	}

	@Override
	public void setContext(final @NonNull EClassifier ecoreContext, final @Nullable Map<String, EClassifier> ecoreParameters) {
		modify(new IUnitOfWork<Object, XtextResource>()
		{
			@Override
			public Object exec(@Nullable XtextResource resource) throws Exception {
				if (resource instanceof BaseCSResource) {
					BaseCSResource csResource = (BaseCSResource)resource;
					csResource.setParserContext(new EInvocationContext(csResource.getEnvironmentFactory(), resource.getURI(), ecoreContext, ecoreParameters));
				}
				return null;
			}
		});

        this.context = ecoreContext;
        this.parameters = ecoreParameters;
    }

	public @Nullable Object setContext(@NonNull BaseCSResource csResource, @Nullable EObject eObject) {
		csResource.setParserContext(new EObjectContext(csResource.getEnvironmentFactory(), csResource.getURI(), eObject));
		return null;
	}
}
