/*******************************************************************************
 * Copyright (c) 2011, 2016 Willink Transformations and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     E.D.Willink - initial API and implementation
 *******************************************************************************/
package org.eclipse.qvtd.xtext.qvtcore.ui.contentassist.antlr;

import java.util.Collection;
import java.util.Map;
import java.util.HashMap;

import org.antlr.runtime.RecognitionException;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.AbstractContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.FollowElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;

import com.google.inject.Inject;

import org.eclipse.qvtd.xtext.qvtcore.services.QVTcoreGrammarAccess;

public class QVTcoreParser extends AbstractContentAssistParser {
	
	@Inject
	private QVTcoreGrammarAccess grammarAccess;
	
	private Map<AbstractElement, String> nameMappings;
	
	@Override
	protected org.eclipse.qvtd.xtext.qvtcore.ui.contentassist.antlr.internal.InternalQVTcoreParser createParser() {
		org.eclipse.qvtd.xtext.qvtcore.ui.contentassist.antlr.internal.InternalQVTcoreParser result = new org.eclipse.qvtd.xtext.qvtcore.ui.contentassist.antlr.internal.InternalQVTcoreParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}
	
	@Override
	protected String getRuleName(AbstractElement element) {
		if (nameMappings == null) {
			nameMappings = new HashMap<AbstractElement, String>() {
				private static final long serialVersionUID = 1L;
				{
					put(grammarAccess.getTopLevelCSAccess().getAlternatives_1(), "rule__TopLevelCS__Alternatives_1");
					put(grammarAccess.getBottomPatternCSAccess().getAlternatives(), "rule__BottomPatternCS__Alternatives");
					put(grammarAccess.getBottomPatternCSAccess().getAlternatives_0_1(), "rule__BottomPatternCS__Alternatives_0_1");
					put(grammarAccess.getBottomPatternCSAccess().getAlternatives_0_2_1(), "rule__BottomPatternCS__Alternatives_0_2_1");
					put(grammarAccess.getBottomPatternCSAccess().getAlternatives_1_1(), "rule__BottomPatternCS__Alternatives_1_1");
					put(grammarAccess.getBottomPatternCSAccess().getAlternatives_1_2_1(), "rule__BottomPatternCS__Alternatives_1_2_1");
					put(grammarAccess.getGuardPatternCSAccess().getAlternatives(), "rule__GuardPatternCS__Alternatives");
					put(grammarAccess.getQueryCSAccess().getAlternatives_8(), "rule__QueryCS__Alternatives_8");
					put(grammarAccess.getUnrestrictedNameAccess().getAlternatives(), "rule__UnrestrictedName__Alternatives");
					put(grammarAccess.getEssentialOCLReservedKeywordAccess().getAlternatives(), "rule__EssentialOCLReservedKeyword__Alternatives");
					put(grammarAccess.getEssentialOCLUnaryOperatorNameAccess().getAlternatives(), "rule__EssentialOCLUnaryOperatorName__Alternatives");
					put(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getAlternatives(), "rule__EssentialOCLInfixOperatorName__Alternatives");
					put(grammarAccess.getEssentialOCLNavigationOperatorNameAccess().getAlternatives(), "rule__EssentialOCLNavigationOperatorName__Alternatives");
					put(grammarAccess.getBinaryOperatorNameAccess().getAlternatives(), "rule__BinaryOperatorName__Alternatives");
					put(grammarAccess.getEssentialOCLUnreservedNameAccess().getAlternatives(), "rule__EssentialOCLUnreservedName__Alternatives");
					put(grammarAccess.getURIFirstPathElementCSAccess().getAlternatives(), "rule__URIFirstPathElementCS__Alternatives");
					put(grammarAccess.getPrimitiveTypeIdentifierAccess().getAlternatives(), "rule__PrimitiveTypeIdentifier__Alternatives");
					put(grammarAccess.getCollectionTypeIdentifierAccess().getAlternatives(), "rule__CollectionTypeIdentifier__Alternatives");
					put(grammarAccess.getCollectionLiteralPartCSAccess().getAlternatives(), "rule__CollectionLiteralPartCS__Alternatives");
					put(grammarAccess.getShadowPartCSAccess().getOwnedInitExpressionAlternatives_2_0(), "rule__ShadowPartCS__OwnedInitExpressionAlternatives_2_0");
					put(grammarAccess.getPrimitiveLiteralExpCSAccess().getAlternatives(), "rule__PrimitiveLiteralExpCS__Alternatives");
					put(grammarAccess.getBooleanLiteralExpCSAccess().getAlternatives(), "rule__BooleanLiteralExpCS__Alternatives");
					put(grammarAccess.getTypeLiteralCSAccess().getAlternatives(), "rule__TypeLiteralCS__Alternatives");
					put(grammarAccess.getTypeExpCSAccess().getAlternatives_0(), "rule__TypeExpCS__Alternatives_0");
					put(grammarAccess.getExpCSAccess().getAlternatives(), "rule__ExpCS__Alternatives");
					put(grammarAccess.getPrefixedLetExpCSAccess().getAlternatives(), "rule__PrefixedLetExpCS__Alternatives");
					put(grammarAccess.getPrefixedPrimaryExpCSAccess().getAlternatives(), "rule__PrefixedPrimaryExpCS__Alternatives");
					put(grammarAccess.getPrimaryExpCSAccess().getAlternatives(), "rule__PrimaryExpCS__Alternatives");
					put(grammarAccess.getCurlyBracketedClauseCSAccess().getAlternatives_2(), "rule__CurlyBracketedClauseCS__Alternatives_2");
					put(grammarAccess.getNavigatingArgCSAccess().getAlternatives(), "rule__NavigatingArgCS__Alternatives");
					put(grammarAccess.getNavigatingArgCSAccess().getAlternatives_0_1(), "rule__NavigatingArgCS__Alternatives_0_1");
					put(grammarAccess.getNavigatingCommaArgCSAccess().getAlternatives_2(), "rule__NavigatingCommaArgCS__Alternatives_2");
					put(grammarAccess.getIfExpCSAccess().getOwnedConditionAlternatives_1_0(), "rule__IfExpCS__OwnedConditionAlternatives_1_0");
					put(grammarAccess.getMultiplicityCSAccess().getAlternatives_1(), "rule__MultiplicityCS__Alternatives_1");
					put(grammarAccess.getMultiplicityCSAccess().getAlternatives_2(), "rule__MultiplicityCS__Alternatives_2");
					put(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsAlternatives_0(), "rule__MultiplicityStringCS__StringBoundsAlternatives_0");
					put(grammarAccess.getTypeRefCSAccess().getAlternatives(), "rule__TypeRefCS__Alternatives");
					put(grammarAccess.getIDAccess().getAlternatives(), "rule__ID__Alternatives");
					put(grammarAccess.getUPPERAccess().getAlternatives(), "rule__UPPER__Alternatives");
					put(grammarAccess.getTopLevelCSAccess().getGroup(), "rule__TopLevelCS__Group__0");
					put(grammarAccess.getMappingCSAccess().getGroup(), "rule__MappingCS__Group__0");
					put(grammarAccess.getMappingCSAccess().getGroup_4(), "rule__MappingCS__Group_4__0");
					put(grammarAccess.getMappingCSAccess().getGroup_5(), "rule__MappingCS__Group_5__0");
					put(grammarAccess.getMappingCSAccess().getGroup_5_2(), "rule__MappingCS__Group_5_2__0");
					put(grammarAccess.getMappingCSAccess().getGroup_8(), "rule__MappingCS__Group_8__0");
					put(grammarAccess.getBottomPatternCSAccess().getGroup_0(), "rule__BottomPatternCS__Group_0__0");
					put(grammarAccess.getBottomPatternCSAccess().getGroup_0_2(), "rule__BottomPatternCS__Group_0_2__0");
					put(grammarAccess.getBottomPatternCSAccess().getGroup_1(), "rule__BottomPatternCS__Group_1__0");
					put(grammarAccess.getBottomPatternCSAccess().getGroup_1_2(), "rule__BottomPatternCS__Group_1_2__0");
					put(grammarAccess.getBottomPatternCSAccess().getGroup_2(), "rule__BottomPatternCS__Group_2__0");
					put(grammarAccess.getBottomPatternCSAccess().getGroup_3(), "rule__BottomPatternCS__Group_3__0");
					put(grammarAccess.getDirectionCSAccess().getGroup(), "rule__DirectionCS__Group__0");
					put(grammarAccess.getDirectionCSAccess().getGroup_2(), "rule__DirectionCS__Group_2__0");
					put(grammarAccess.getDirectionCSAccess().getGroup_2_2(), "rule__DirectionCS__Group_2_2__0");
					put(grammarAccess.getDirectionCSAccess().getGroup_3(), "rule__DirectionCS__Group_3__0");
					put(grammarAccess.getDirectionCSAccess().getGroup_3_2(), "rule__DirectionCS__Group_3_2__0");
					put(grammarAccess.getGuardPatternCSAccess().getGroup_0(), "rule__GuardPatternCS__Group_0__0");
					put(grammarAccess.getGuardPatternCSAccess().getGroup_0_2(), "rule__GuardPatternCS__Group_0_2__0");
					put(grammarAccess.getGuardPatternCSAccess().getGroup_1(), "rule__GuardPatternCS__Group_1__0");
					put(grammarAccess.getGuardPatternCSAccess().getGroup_1_2(), "rule__GuardPatternCS__Group_1_2__0");
					put(grammarAccess.getGuardPatternCSAccess().getGroup_2(), "rule__GuardPatternCS__Group_2__0");
					put(grammarAccess.getGuardPatternCSAccess().getGroup_3(), "rule__GuardPatternCS__Group_3__0");
					put(grammarAccess.getGuardVariableCSAccess().getGroup(), "rule__GuardVariableCS__Group__0");
					put(grammarAccess.getImportCSAccess().getGroup(), "rule__ImportCS__Group__0");
					put(grammarAccess.getImportCSAccess().getGroup_1(), "rule__ImportCS__Group_1__0");
					put(grammarAccess.getImportCSAccess().getGroup_3(), "rule__ImportCS__Group_3__0");
					put(grammarAccess.getNamedDomainCSAccess().getGroup(), "rule__NamedDomainCS__Group__0");
					put(grammarAccess.getParamDeclarationCSAccess().getGroup(), "rule__ParamDeclarationCS__Group__0");
					put(grammarAccess.getPredicateCSAccess().getGroup(), "rule__PredicateCS__Group__0");
					put(grammarAccess.getPredicateOrAssignmentCSAccess().getGroup(), "rule__PredicateOrAssignmentCS__Group__0");
					put(grammarAccess.getPredicateOrAssignmentCSAccess().getGroup_2(), "rule__PredicateOrAssignmentCS__Group_2__0");
					put(grammarAccess.getQueryCSAccess().getGroup(), "rule__QueryCS__Group__0");
					put(grammarAccess.getQueryCSAccess().getGroup_4(), "rule__QueryCS__Group_4__0");
					put(grammarAccess.getQueryCSAccess().getGroup_4_1(), "rule__QueryCS__Group_4_1__0");
					put(grammarAccess.getQueryCSAccess().getGroup_8_1(), "rule__QueryCS__Group_8_1__0");
					put(grammarAccess.getScopeNameCSAccess().getGroup(), "rule__ScopeNameCS__Group__0");
					put(grammarAccess.getScopeNameCSAccess().getGroup_2(), "rule__ScopeNameCS__Group_2__0");
					put(grammarAccess.getTransformationCSAccess().getGroup(), "rule__TransformationCS__Group__0");
					put(grammarAccess.getTransformationCSAccess().getGroup_4(), "rule__TransformationCS__Group_4__0");
					put(grammarAccess.getUnrealizedVariableCSAccess().getGroup(), "rule__UnrealizedVariableCS__Group__0");
					put(grammarAccess.getUnrealizedVariableCSAccess().getGroup_1(), "rule__UnrealizedVariableCS__Group_1__0");
					put(grammarAccess.getUnrealizedVariableCSAccess().getGroup_2(), "rule__UnrealizedVariableCS__Group_2__0");
					put(grammarAccess.getRealizedVariableCSAccess().getGroup(), "rule__RealizedVariableCS__Group__0");
					put(grammarAccess.getUnnamedDomainCSAccess().getGroup(), "rule__UnnamedDomainCS__Group__0");
					put(grammarAccess.getURIPathNameCSAccess().getGroup(), "rule__URIPathNameCS__Group__0");
					put(grammarAccess.getURIPathNameCSAccess().getGroup_1(), "rule__URIPathNameCS__Group_1__0");
					put(grammarAccess.getURIFirstPathElementCSAccess().getGroup_1(), "rule__URIFirstPathElementCS__Group_1__0");
					put(grammarAccess.getCollectionTypeCSAccess().getGroup(), "rule__CollectionTypeCS__Group__0");
					put(grammarAccess.getCollectionTypeCSAccess().getGroup_1(), "rule__CollectionTypeCS__Group_1__0");
					put(grammarAccess.getMapTypeCSAccess().getGroup(), "rule__MapTypeCS__Group__0");
					put(grammarAccess.getMapTypeCSAccess().getGroup_1(), "rule__MapTypeCS__Group_1__0");
					put(grammarAccess.getTupleTypeCSAccess().getGroup(), "rule__TupleTypeCS__Group__0");
					put(grammarAccess.getTupleTypeCSAccess().getGroup_1(), "rule__TupleTypeCS__Group_1__0");
					put(grammarAccess.getTupleTypeCSAccess().getGroup_1_1(), "rule__TupleTypeCS__Group_1_1__0");
					put(grammarAccess.getTupleTypeCSAccess().getGroup_1_1_1(), "rule__TupleTypeCS__Group_1_1_1__0");
					put(grammarAccess.getTuplePartCSAccess().getGroup(), "rule__TuplePartCS__Group__0");
					put(grammarAccess.getCollectionLiteralExpCSAccess().getGroup(), "rule__CollectionLiteralExpCS__Group__0");
					put(grammarAccess.getCollectionLiteralExpCSAccess().getGroup_2(), "rule__CollectionLiteralExpCS__Group_2__0");
					put(grammarAccess.getCollectionLiteralExpCSAccess().getGroup_2_1(), "rule__CollectionLiteralExpCS__Group_2_1__0");
					put(grammarAccess.getCollectionLiteralPartCSAccess().getGroup_0(), "rule__CollectionLiteralPartCS__Group_0__0");
					put(grammarAccess.getCollectionLiteralPartCSAccess().getGroup_0_1(), "rule__CollectionLiteralPartCS__Group_0_1__0");
					put(grammarAccess.getCollectionPatternCSAccess().getGroup(), "rule__CollectionPatternCS__Group__0");
					put(grammarAccess.getCollectionPatternCSAccess().getGroup_2(), "rule__CollectionPatternCS__Group_2__0");
					put(grammarAccess.getCollectionPatternCSAccess().getGroup_2_1(), "rule__CollectionPatternCS__Group_2_1__0");
					put(grammarAccess.getCollectionPatternCSAccess().getGroup_2_2(), "rule__CollectionPatternCS__Group_2_2__0");
					put(grammarAccess.getShadowPartCSAccess().getGroup(), "rule__ShadowPartCS__Group__0");
					put(grammarAccess.getPatternExpCSAccess().getGroup(), "rule__PatternExpCS__Group__0");
					put(grammarAccess.getLambdaLiteralExpCSAccess().getGroup(), "rule__LambdaLiteralExpCS__Group__0");
					put(grammarAccess.getMapLiteralExpCSAccess().getGroup(), "rule__MapLiteralExpCS__Group__0");
					put(grammarAccess.getMapLiteralExpCSAccess().getGroup_2(), "rule__MapLiteralExpCS__Group_2__0");
					put(grammarAccess.getMapLiteralExpCSAccess().getGroup_2_1(), "rule__MapLiteralExpCS__Group_2_1__0");
					put(grammarAccess.getMapLiteralPartCSAccess().getGroup(), "rule__MapLiteralPartCS__Group__0");
					put(grammarAccess.getTupleLiteralExpCSAccess().getGroup(), "rule__TupleLiteralExpCS__Group__0");
					put(grammarAccess.getTupleLiteralExpCSAccess().getGroup_3(), "rule__TupleLiteralExpCS__Group_3__0");
					put(grammarAccess.getTupleLiteralPartCSAccess().getGroup(), "rule__TupleLiteralPartCS__Group__0");
					put(grammarAccess.getTupleLiteralPartCSAccess().getGroup_1(), "rule__TupleLiteralPartCS__Group_1__0");
					put(grammarAccess.getUnlimitedNaturalLiteralExpCSAccess().getGroup(), "rule__UnlimitedNaturalLiteralExpCS__Group__0");
					put(grammarAccess.getInvalidLiteralExpCSAccess().getGroup(), "rule__InvalidLiteralExpCS__Group__0");
					put(grammarAccess.getNullLiteralExpCSAccess().getGroup(), "rule__NullLiteralExpCS__Group__0");
					put(grammarAccess.getTypeLiteralWithMultiplicityCSAccess().getGroup(), "rule__TypeLiteralWithMultiplicityCS__Group__0");
					put(grammarAccess.getTypeNameExpCSAccess().getGroup(), "rule__TypeNameExpCS__Group__0");
					put(grammarAccess.getTypeNameExpCSAccess().getGroup_1(), "rule__TypeNameExpCS__Group_1__0");
					put(grammarAccess.getTypeNameExpCSAccess().getGroup_1_1(), "rule__TypeNameExpCS__Group_1_1__0");
					put(grammarAccess.getTypeExpCSAccess().getGroup(), "rule__TypeExpCS__Group__0");
					put(grammarAccess.getExpCSAccess().getGroup_0(), "rule__ExpCS__Group_0__0");
					put(grammarAccess.getExpCSAccess().getGroup_0_1(), "rule__ExpCS__Group_0_1__0");
					put(grammarAccess.getPrefixedLetExpCSAccess().getGroup_0(), "rule__PrefixedLetExpCS__Group_0__0");
					put(grammarAccess.getPrefixedPrimaryExpCSAccess().getGroup_0(), "rule__PrefixedPrimaryExpCS__Group_0__0");
					put(grammarAccess.getNameExpCSAccess().getGroup(), "rule__NameExpCS__Group__0");
					put(grammarAccess.getNameExpCSAccess().getGroup_4(), "rule__NameExpCS__Group_4__0");
					put(grammarAccess.getCurlyBracketedClauseCSAccess().getGroup(), "rule__CurlyBracketedClauseCS__Group__0");
					put(grammarAccess.getCurlyBracketedClauseCSAccess().getGroup_2_0(), "rule__CurlyBracketedClauseCS__Group_2_0__0");
					put(grammarAccess.getCurlyBracketedClauseCSAccess().getGroup_2_0_1(), "rule__CurlyBracketedClauseCS__Group_2_0_1__0");
					put(grammarAccess.getRoundBracketedClauseCSAccess().getGroup(), "rule__RoundBracketedClauseCS__Group__0");
					put(grammarAccess.getRoundBracketedClauseCSAccess().getGroup_2(), "rule__RoundBracketedClauseCS__Group_2__0");
					put(grammarAccess.getRoundBracketedClauseCSAccess().getGroup_2_2(), "rule__RoundBracketedClauseCS__Group_2_2__0");
					put(grammarAccess.getRoundBracketedClauseCSAccess().getGroup_2_3(), "rule__RoundBracketedClauseCS__Group_2_3__0");
					put(grammarAccess.getSquareBracketedClauseCSAccess().getGroup(), "rule__SquareBracketedClauseCS__Group__0");
					put(grammarAccess.getSquareBracketedClauseCSAccess().getGroup_2(), "rule__SquareBracketedClauseCS__Group_2__0");
					put(grammarAccess.getNavigatingArgCSAccess().getGroup_0(), "rule__NavigatingArgCS__Group_0__0");
					put(grammarAccess.getNavigatingArgCSAccess().getGroup_0_1_0(), "rule__NavigatingArgCS__Group_0_1_0__0");
					put(grammarAccess.getNavigatingArgCSAccess().getGroup_0_1_0_2(), "rule__NavigatingArgCS__Group_0_1_0_2__0");
					put(grammarAccess.getNavigatingArgCSAccess().getGroup_0_1_1(), "rule__NavigatingArgCS__Group_0_1_1__0");
					put(grammarAccess.getNavigatingArgCSAccess().getGroup_1(), "rule__NavigatingArgCS__Group_1__0");
					put(grammarAccess.getNavigatingBarArgCSAccess().getGroup(), "rule__NavigatingBarArgCS__Group__0");
					put(grammarAccess.getNavigatingBarArgCSAccess().getGroup_2(), "rule__NavigatingBarArgCS__Group_2__0");
					put(grammarAccess.getNavigatingBarArgCSAccess().getGroup_2_2(), "rule__NavigatingBarArgCS__Group_2_2__0");
					put(grammarAccess.getNavigatingCommaArgCSAccess().getGroup(), "rule__NavigatingCommaArgCS__Group__0");
					put(grammarAccess.getNavigatingCommaArgCSAccess().getGroup_2_0(), "rule__NavigatingCommaArgCS__Group_2_0__0");
					put(grammarAccess.getNavigatingCommaArgCSAccess().getGroup_2_0_2(), "rule__NavigatingCommaArgCS__Group_2_0_2__0");
					put(grammarAccess.getNavigatingCommaArgCSAccess().getGroup_2_1(), "rule__NavigatingCommaArgCS__Group_2_1__0");
					put(grammarAccess.getNavigatingSemiArgCSAccess().getGroup(), "rule__NavigatingSemiArgCS__Group__0");
					put(grammarAccess.getNavigatingSemiArgCSAccess().getGroup_2(), "rule__NavigatingSemiArgCS__Group_2__0");
					put(grammarAccess.getNavigatingSemiArgCSAccess().getGroup_2_2(), "rule__NavigatingSemiArgCS__Group_2_2__0");
					put(grammarAccess.getIfExpCSAccess().getGroup(), "rule__IfExpCS__Group__0");
					put(grammarAccess.getElseIfThenExpCSAccess().getGroup(), "rule__ElseIfThenExpCS__Group__0");
					put(grammarAccess.getLetExpCSAccess().getGroup(), "rule__LetExpCS__Group__0");
					put(grammarAccess.getLetExpCSAccess().getGroup_2(), "rule__LetExpCS__Group_2__0");
					put(grammarAccess.getLetVariableCSAccess().getGroup(), "rule__LetVariableCS__Group__0");
					put(grammarAccess.getLetVariableCSAccess().getGroup_2(), "rule__LetVariableCS__Group_2__0");
					put(grammarAccess.getNestedExpCSAccess().getGroup(), "rule__NestedExpCS__Group__0");
					put(grammarAccess.getSelfExpCSAccess().getGroup(), "rule__SelfExpCS__Group__0");
					put(grammarAccess.getMultiplicityBoundsCSAccess().getGroup(), "rule__MultiplicityBoundsCS__Group__0");
					put(grammarAccess.getMultiplicityBoundsCSAccess().getGroup_1(), "rule__MultiplicityBoundsCS__Group_1__0");
					put(grammarAccess.getMultiplicityCSAccess().getGroup(), "rule__MultiplicityCS__Group__0");
					put(grammarAccess.getPathNameCSAccess().getGroup(), "rule__PathNameCS__Group__0");
					put(grammarAccess.getPathNameCSAccess().getGroup_1(), "rule__PathNameCS__Group_1__0");
					put(grammarAccess.getTemplateBindingCSAccess().getGroup(), "rule__TemplateBindingCS__Group__0");
					put(grammarAccess.getTemplateBindingCSAccess().getGroup_1(), "rule__TemplateBindingCS__Group_1__0");
					put(grammarAccess.getTemplateSignatureCSAccess().getGroup(), "rule__TemplateSignatureCS__Group__0");
					put(grammarAccess.getTemplateSignatureCSAccess().getGroup_2(), "rule__TemplateSignatureCS__Group_2__0");
					put(grammarAccess.getTypeParameterCSAccess().getGroup(), "rule__TypeParameterCS__Group__0");
					put(grammarAccess.getTypeParameterCSAccess().getGroup_1(), "rule__TypeParameterCS__Group_1__0");
					put(grammarAccess.getTypeParameterCSAccess().getGroup_1_2(), "rule__TypeParameterCS__Group_1_2__0");
					put(grammarAccess.getTypedTypeRefCSAccess().getGroup(), "rule__TypedTypeRefCS__Group__0");
					put(grammarAccess.getTypedTypeRefCSAccess().getGroup_1(), "rule__TypedTypeRefCS__Group_1__0");
					put(grammarAccess.getWildcardTypeRefCSAccess().getGroup(), "rule__WildcardTypeRefCS__Group__0");
					put(grammarAccess.getWildcardTypeRefCSAccess().getGroup_2(), "rule__WildcardTypeRefCS__Group_2__0");
					put(grammarAccess.getTopLevelCSAccess().getOwnedImportsAssignment_0(), "rule__TopLevelCS__OwnedImportsAssignment_0");
					put(grammarAccess.getTopLevelCSAccess().getOwnedMappingsAssignment_1_0(), "rule__TopLevelCS__OwnedMappingsAssignment_1_0");
					put(grammarAccess.getTopLevelCSAccess().getOwnedTransformationsAssignment_1_1(), "rule__TopLevelCS__OwnedTransformationsAssignment_1_1");
					put(grammarAccess.getTopLevelCSAccess().getOwnedQueriesAssignment_1_2(), "rule__TopLevelCS__OwnedQueriesAssignment_1_2");
					put(grammarAccess.getMappingCSAccess().getIsDefaultAssignment_1(), "rule__MappingCS__IsDefaultAssignment_1");
					put(grammarAccess.getMappingCSAccess().getNameAssignment_3(), "rule__MappingCS__NameAssignment_3");
					put(grammarAccess.getMappingCSAccess().getOwnedInPathNameAssignment_4_1(), "rule__MappingCS__OwnedInPathNameAssignment_4_1");
					put(grammarAccess.getMappingCSAccess().getRefinesAssignment_5_1(), "rule__MappingCS__RefinesAssignment_5_1");
					put(grammarAccess.getMappingCSAccess().getRefinesAssignment_5_2_1(), "rule__MappingCS__RefinesAssignment_5_2_1");
					put(grammarAccess.getMappingCSAccess().getOwnedDomainsAssignment_7(), "rule__MappingCS__OwnedDomainsAssignment_7");
					put(grammarAccess.getMappingCSAccess().getOwnedMiddleAssignment_8_1(), "rule__MappingCS__OwnedMiddleAssignment_8_1");
					put(grammarAccess.getMappingCSAccess().getOwnedComposedMappingsAssignment_9(), "rule__MappingCS__OwnedComposedMappingsAssignment_9");
					put(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_1_0(), "rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_0_1_0");
					put(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_0_1_1(), "rule__BottomPatternCS__OwnedRealizedVariablesAssignment_0_1_1");
					put(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_2_1_0(), "rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_0_2_1_0");
					put(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_0_2_1_1(), "rule__BottomPatternCS__OwnedRealizedVariablesAssignment_0_2_1_1");
					put(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsAssignment_0_4(), "rule__BottomPatternCS__OwnedConstraintsAssignment_0_4");
					put(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_1_0(), "rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_1_1_0");
					put(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_1_1_1(), "rule__BottomPatternCS__OwnedRealizedVariablesAssignment_1_1_1");
					put(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_2_1_0(), "rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_1_2_1_0");
					put(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_1_2_1_1(), "rule__BottomPatternCS__OwnedRealizedVariablesAssignment_1_2_1_1");
					put(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsAssignment_2_1(), "rule__BottomPatternCS__OwnedConstraintsAssignment_2_1");
					put(grammarAccess.getDirectionCSAccess().getNameAssignment_1(), "rule__DirectionCS__NameAssignment_1");
					put(grammarAccess.getDirectionCSAccess().getImportsAssignment_2_1(), "rule__DirectionCS__ImportsAssignment_2_1");
					put(grammarAccess.getDirectionCSAccess().getImportsAssignment_2_2_1(), "rule__DirectionCS__ImportsAssignment_2_2_1");
					put(grammarAccess.getDirectionCSAccess().getUsesAssignment_3_1(), "rule__DirectionCS__UsesAssignment_3_1");
					put(grammarAccess.getDirectionCSAccess().getUsesAssignment_3_2_1(), "rule__DirectionCS__UsesAssignment_3_2_1");
					put(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_1(), "rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_0_1");
					put(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_2_1(), "rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_0_2_1");
					put(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesAssignment_0_4(), "rule__GuardPatternCS__OwnedPredicatesAssignment_0_4");
					put(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_1(), "rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_1_1");
					put(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_2_1(), "rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_1_2_1");
					put(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesAssignment_2_1(), "rule__GuardPatternCS__OwnedPredicatesAssignment_2_1");
					put(grammarAccess.getGuardVariableCSAccess().getNameAssignment_0(), "rule__GuardVariableCS__NameAssignment_0");
					put(grammarAccess.getGuardVariableCSAccess().getOwnedTypeAssignment_2(), "rule__GuardVariableCS__OwnedTypeAssignment_2");
					put(grammarAccess.getImportCSAccess().getNameAssignment_1_0(), "rule__ImportCS__NameAssignment_1_0");
					put(grammarAccess.getImportCSAccess().getOwnedPathNameAssignment_2(), "rule__ImportCS__OwnedPathNameAssignment_2");
					put(grammarAccess.getImportCSAccess().getIsAllAssignment_3_0(), "rule__ImportCS__IsAllAssignment_3_0");
					put(grammarAccess.getNamedDomainCSAccess().getIsCheckAssignment_0(), "rule__NamedDomainCS__IsCheckAssignment_0");
					put(grammarAccess.getNamedDomainCSAccess().getIsEnforceAssignment_1(), "rule__NamedDomainCS__IsEnforceAssignment_1");
					put(grammarAccess.getNamedDomainCSAccess().getDirectionAssignment_2(), "rule__NamedDomainCS__DirectionAssignment_2");
					put(grammarAccess.getNamedDomainCSAccess().getOwnedGuardPatternAssignment_3(), "rule__NamedDomainCS__OwnedGuardPatternAssignment_3");
					put(grammarAccess.getNamedDomainCSAccess().getOwnedBottomPatternAssignment_4(), "rule__NamedDomainCS__OwnedBottomPatternAssignment_4");
					put(grammarAccess.getParamDeclarationCSAccess().getNameAssignment_0(), "rule__ParamDeclarationCS__NameAssignment_0");
					put(grammarAccess.getParamDeclarationCSAccess().getOwnedTypeAssignment_2(), "rule__ParamDeclarationCS__OwnedTypeAssignment_2");
					put(grammarAccess.getPredicateCSAccess().getOwnedConditionAssignment_0(), "rule__PredicateCS__OwnedConditionAssignment_0");
					put(grammarAccess.getPredicateOrAssignmentCSAccess().getIsDefaultAssignment_0(), "rule__PredicateOrAssignmentCS__IsDefaultAssignment_0");
					put(grammarAccess.getPredicateOrAssignmentCSAccess().getOwnedTargetAssignment_1(), "rule__PredicateOrAssignmentCS__OwnedTargetAssignment_1");
					put(grammarAccess.getPredicateOrAssignmentCSAccess().getOwnedInitExpressionAssignment_2_1(), "rule__PredicateOrAssignmentCS__OwnedInitExpressionAssignment_2_1");
					put(grammarAccess.getQueryCSAccess().getOwnedPathNameAssignment_1(), "rule__QueryCS__OwnedPathNameAssignment_1");
					put(grammarAccess.getQueryCSAccess().getNameAssignment_2(), "rule__QueryCS__NameAssignment_2");
					put(grammarAccess.getQueryCSAccess().getOwnedParametersAssignment_4_0(), "rule__QueryCS__OwnedParametersAssignment_4_0");
					put(grammarAccess.getQueryCSAccess().getOwnedParametersAssignment_4_1_1(), "rule__QueryCS__OwnedParametersAssignment_4_1_1");
					put(grammarAccess.getQueryCSAccess().getOwnedTypeAssignment_7(), "rule__QueryCS__OwnedTypeAssignment_7");
					put(grammarAccess.getQueryCSAccess().getOwnedExpressionAssignment_8_1_1(), "rule__QueryCS__OwnedExpressionAssignment_8_1_1");
					put(grammarAccess.getScopeNameCSAccess().getOwnedPathElementsAssignment_0(), "rule__ScopeNameCS__OwnedPathElementsAssignment_0");
					put(grammarAccess.getScopeNameCSAccess().getOwnedPathElementsAssignment_2_0(), "rule__ScopeNameCS__OwnedPathElementsAssignment_2_0");
					put(grammarAccess.getTransformationCSAccess().getOwnedPathNameAssignment_1(), "rule__TransformationCS__OwnedPathNameAssignment_1");
					put(grammarAccess.getTransformationCSAccess().getNameAssignment_2(), "rule__TransformationCS__NameAssignment_2");
					put(grammarAccess.getTransformationCSAccess().getOwnedDirectionsAssignment_4_0(), "rule__TransformationCS__OwnedDirectionsAssignment_4_0");
					put(grammarAccess.getUnrealizedVariableCSAccess().getNameAssignment_0(), "rule__UnrealizedVariableCS__NameAssignment_0");
					put(grammarAccess.getUnrealizedVariableCSAccess().getOwnedTypeAssignment_1_1(), "rule__UnrealizedVariableCS__OwnedTypeAssignment_1_1");
					put(grammarAccess.getUnrealizedVariableCSAccess().getOwnedInitExpressionAssignment_2_1(), "rule__UnrealizedVariableCS__OwnedInitExpressionAssignment_2_1");
					put(grammarAccess.getRealizedVariableCSAccess().getNameAssignment_1(), "rule__RealizedVariableCS__NameAssignment_1");
					put(grammarAccess.getRealizedVariableCSAccess().getOwnedTypeAssignment_3(), "rule__RealizedVariableCS__OwnedTypeAssignment_3");
					put(grammarAccess.getUnnamedDomainCSAccess().getOwnedGuardPatternAssignment_1(), "rule__UnnamedDomainCS__OwnedGuardPatternAssignment_1");
					put(grammarAccess.getUnnamedDomainCSAccess().getOwnedBottomPatternAssignment_2(), "rule__UnnamedDomainCS__OwnedBottomPatternAssignment_2");
					put(grammarAccess.getModelAccess().getOwnedExpressionAssignment(), "rule__Model__OwnedExpressionAssignment");
					put(grammarAccess.getURIPathNameCSAccess().getOwnedPathElementsAssignment_0(), "rule__URIPathNameCS__OwnedPathElementsAssignment_0");
					put(grammarAccess.getURIPathNameCSAccess().getOwnedPathElementsAssignment_1_1(), "rule__URIPathNameCS__OwnedPathElementsAssignment_1_1");
					put(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementAssignment_0(), "rule__URIFirstPathElementCS__ReferredElementAssignment_0");
					put(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementAssignment_1_1(), "rule__URIFirstPathElementCS__ReferredElementAssignment_1_1");
					put(grammarAccess.getPrimitiveTypeCSAccess().getNameAssignment(), "rule__PrimitiveTypeCS__NameAssignment");
					put(grammarAccess.getCollectionTypeCSAccess().getNameAssignment_0(), "rule__CollectionTypeCS__NameAssignment_0");
					put(grammarAccess.getCollectionTypeCSAccess().getOwnedTypeAssignment_1_1(), "rule__CollectionTypeCS__OwnedTypeAssignment_1_1");
					put(grammarAccess.getMapTypeCSAccess().getNameAssignment_0(), "rule__MapTypeCS__NameAssignment_0");
					put(grammarAccess.getMapTypeCSAccess().getOwnedKeyTypeAssignment_1_1(), "rule__MapTypeCS__OwnedKeyTypeAssignment_1_1");
					put(grammarAccess.getMapTypeCSAccess().getOwnedValueTypeAssignment_1_3(), "rule__MapTypeCS__OwnedValueTypeAssignment_1_3");
					put(grammarAccess.getTupleTypeCSAccess().getNameAssignment_0(), "rule__TupleTypeCS__NameAssignment_0");
					put(grammarAccess.getTupleTypeCSAccess().getOwnedPartsAssignment_1_1_0(), "rule__TupleTypeCS__OwnedPartsAssignment_1_1_0");
					put(grammarAccess.getTupleTypeCSAccess().getOwnedPartsAssignment_1_1_1_1(), "rule__TupleTypeCS__OwnedPartsAssignment_1_1_1_1");
					put(grammarAccess.getTuplePartCSAccess().getNameAssignment_0(), "rule__TuplePartCS__NameAssignment_0");
					put(grammarAccess.getTuplePartCSAccess().getOwnedTypeAssignment_2(), "rule__TuplePartCS__OwnedTypeAssignment_2");
					put(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedTypeAssignment_0(), "rule__CollectionLiteralExpCS__OwnedTypeAssignment_0");
					put(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedPartsAssignment_2_0(), "rule__CollectionLiteralExpCS__OwnedPartsAssignment_2_0");
					put(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedPartsAssignment_2_1_1(), "rule__CollectionLiteralExpCS__OwnedPartsAssignment_2_1_1");
					put(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedExpressionAssignment_0_0(), "rule__CollectionLiteralPartCS__OwnedExpressionAssignment_0_0");
					put(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedLastExpressionAssignment_0_1_1(), "rule__CollectionLiteralPartCS__OwnedLastExpressionAssignment_0_1_1");
					put(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedExpressionAssignment_1(), "rule__CollectionLiteralPartCS__OwnedExpressionAssignment_1");
					put(grammarAccess.getCollectionPatternCSAccess().getOwnedTypeAssignment_0(), "rule__CollectionPatternCS__OwnedTypeAssignment_0");
					put(grammarAccess.getCollectionPatternCSAccess().getOwnedPartsAssignment_2_0(), "rule__CollectionPatternCS__OwnedPartsAssignment_2_0");
					put(grammarAccess.getCollectionPatternCSAccess().getOwnedPartsAssignment_2_1_1(), "rule__CollectionPatternCS__OwnedPartsAssignment_2_1_1");
					put(grammarAccess.getCollectionPatternCSAccess().getRestVariableNameAssignment_2_2_1(), "rule__CollectionPatternCS__RestVariableNameAssignment_2_2_1");
					put(grammarAccess.getShadowPartCSAccess().getReferredPropertyAssignment_0(), "rule__ShadowPartCS__ReferredPropertyAssignment_0");
					put(grammarAccess.getShadowPartCSAccess().getOwnedInitExpressionAssignment_2(), "rule__ShadowPartCS__OwnedInitExpressionAssignment_2");
					put(grammarAccess.getPatternExpCSAccess().getPatternVariableNameAssignment_0(), "rule__PatternExpCS__PatternVariableNameAssignment_0");
					put(grammarAccess.getPatternExpCSAccess().getOwnedPatternTypeAssignment_2(), "rule__PatternExpCS__OwnedPatternTypeAssignment_2");
					put(grammarAccess.getLambdaLiteralExpCSAccess().getOwnedExpressionCSAssignment_2(), "rule__LambdaLiteralExpCS__OwnedExpressionCSAssignment_2");
					put(grammarAccess.getMapLiteralExpCSAccess().getOwnedTypeAssignment_0(), "rule__MapLiteralExpCS__OwnedTypeAssignment_0");
					put(grammarAccess.getMapLiteralExpCSAccess().getOwnedPartsAssignment_2_0(), "rule__MapLiteralExpCS__OwnedPartsAssignment_2_0");
					put(grammarAccess.getMapLiteralExpCSAccess().getOwnedPartsAssignment_2_1_1(), "rule__MapLiteralExpCS__OwnedPartsAssignment_2_1_1");
					put(grammarAccess.getMapLiteralPartCSAccess().getOwnedKeyAssignment_0(), "rule__MapLiteralPartCS__OwnedKeyAssignment_0");
					put(grammarAccess.getMapLiteralPartCSAccess().getOwnedValueAssignment_2(), "rule__MapLiteralPartCS__OwnedValueAssignment_2");
					put(grammarAccess.getTupleLiteralExpCSAccess().getOwnedPartsAssignment_2(), "rule__TupleLiteralExpCS__OwnedPartsAssignment_2");
					put(grammarAccess.getTupleLiteralExpCSAccess().getOwnedPartsAssignment_3_1(), "rule__TupleLiteralExpCS__OwnedPartsAssignment_3_1");
					put(grammarAccess.getTupleLiteralPartCSAccess().getNameAssignment_0(), "rule__TupleLiteralPartCS__NameAssignment_0");
					put(grammarAccess.getTupleLiteralPartCSAccess().getOwnedTypeAssignment_1_1(), "rule__TupleLiteralPartCS__OwnedTypeAssignment_1_1");
					put(grammarAccess.getTupleLiteralPartCSAccess().getOwnedInitExpressionAssignment_3(), "rule__TupleLiteralPartCS__OwnedInitExpressionAssignment_3");
					put(grammarAccess.getNumberLiteralExpCSAccess().getSymbolAssignment(), "rule__NumberLiteralExpCS__SymbolAssignment");
					put(grammarAccess.getStringLiteralExpCSAccess().getSegmentsAssignment(), "rule__StringLiteralExpCS__SegmentsAssignment");
					put(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolAssignment_0(), "rule__BooleanLiteralExpCS__SymbolAssignment_0");
					put(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolAssignment_1(), "rule__BooleanLiteralExpCS__SymbolAssignment_1");
					put(grammarAccess.getTypeLiteralWithMultiplicityCSAccess().getOwnedMultiplicityAssignment_1(), "rule__TypeLiteralWithMultiplicityCS__OwnedMultiplicityAssignment_1");
					put(grammarAccess.getTypeLiteralExpCSAccess().getOwnedTypeAssignment(), "rule__TypeLiteralExpCS__OwnedTypeAssignment");
					put(grammarAccess.getTypeNameExpCSAccess().getOwnedPathNameAssignment_0(), "rule__TypeNameExpCS__OwnedPathNameAssignment_0");
					put(grammarAccess.getTypeNameExpCSAccess().getOwnedCurlyBracketedClauseAssignment_1_0(), "rule__TypeNameExpCS__OwnedCurlyBracketedClauseAssignment_1_0");
					put(grammarAccess.getTypeNameExpCSAccess().getOwnedPatternGuardAssignment_1_1_1(), "rule__TypeNameExpCS__OwnedPatternGuardAssignment_1_1_1");
					put(grammarAccess.getTypeExpCSAccess().getOwnedMultiplicityAssignment_1(), "rule__TypeExpCS__OwnedMultiplicityAssignment_1");
					put(grammarAccess.getExpCSAccess().getNameAssignment_0_1_1(), "rule__ExpCS__NameAssignment_0_1_1");
					put(grammarAccess.getExpCSAccess().getOwnedRightAssignment_0_1_2(), "rule__ExpCS__OwnedRightAssignment_0_1_2");
					put(grammarAccess.getPrefixedLetExpCSAccess().getNameAssignment_0_1(), "rule__PrefixedLetExpCS__NameAssignment_0_1");
					put(grammarAccess.getPrefixedLetExpCSAccess().getOwnedRightAssignment_0_2(), "rule__PrefixedLetExpCS__OwnedRightAssignment_0_2");
					put(grammarAccess.getPrefixedPrimaryExpCSAccess().getNameAssignment_0_1(), "rule__PrefixedPrimaryExpCS__NameAssignment_0_1");
					put(grammarAccess.getPrefixedPrimaryExpCSAccess().getOwnedRightAssignment_0_2(), "rule__PrefixedPrimaryExpCS__OwnedRightAssignment_0_2");
					put(grammarAccess.getNameExpCSAccess().getOwnedPathNameAssignment_0(), "rule__NameExpCS__OwnedPathNameAssignment_0");
					put(grammarAccess.getNameExpCSAccess().getOwnedSquareBracketedClausesAssignment_1(), "rule__NameExpCS__OwnedSquareBracketedClausesAssignment_1");
					put(grammarAccess.getNameExpCSAccess().getOwnedRoundBracketedClauseAssignment_2(), "rule__NameExpCS__OwnedRoundBracketedClauseAssignment_2");
					put(grammarAccess.getNameExpCSAccess().getOwnedCurlyBracketedClauseAssignment_3(), "rule__NameExpCS__OwnedCurlyBracketedClauseAssignment_3");
					put(grammarAccess.getNameExpCSAccess().getIsPreAssignment_4_0(), "rule__NameExpCS__IsPreAssignment_4_0");
					put(grammarAccess.getCurlyBracketedClauseCSAccess().getOwnedPartsAssignment_2_0_0(), "rule__CurlyBracketedClauseCS__OwnedPartsAssignment_2_0_0");
					put(grammarAccess.getCurlyBracketedClauseCSAccess().getOwnedPartsAssignment_2_0_1_1(), "rule__CurlyBracketedClauseCS__OwnedPartsAssignment_2_0_1_1");
					put(grammarAccess.getCurlyBracketedClauseCSAccess().getValueAssignment_2_1(), "rule__CurlyBracketedClauseCS__ValueAssignment_2_1");
					put(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_0(), "rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_0");
					put(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_1(), "rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_1");
					put(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_2_0(), "rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_2_0");
					put(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_2_1(), "rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_2_1");
					put(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_3_0(), "rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_3_0");
					put(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_3_1(), "rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_3_1");
					put(grammarAccess.getSquareBracketedClauseCSAccess().getOwnedTermsAssignment_1(), "rule__SquareBracketedClauseCS__OwnedTermsAssignment_1");
					put(grammarAccess.getSquareBracketedClauseCSAccess().getOwnedTermsAssignment_2_1(), "rule__SquareBracketedClauseCS__OwnedTermsAssignment_2_1");
					put(grammarAccess.getNavigatingArgCSAccess().getOwnedNameExpressionAssignment_0_0(), "rule__NavigatingArgCS__OwnedNameExpressionAssignment_0_0");
					put(grammarAccess.getNavigatingArgCSAccess().getOwnedTypeAssignment_0_1_0_1(), "rule__NavigatingArgCS__OwnedTypeAssignment_0_1_0_1");
					put(grammarAccess.getNavigatingArgCSAccess().getOwnedInitExpressionAssignment_0_1_0_2_1(), "rule__NavigatingArgCS__OwnedInitExpressionAssignment_0_1_0_2_1");
					put(grammarAccess.getNavigatingArgCSAccess().getOwnedInitExpressionAssignment_0_1_1_1(), "rule__NavigatingArgCS__OwnedInitExpressionAssignment_0_1_1_1");
					put(grammarAccess.getNavigatingArgCSAccess().getOwnedTypeAssignment_1_1(), "rule__NavigatingArgCS__OwnedTypeAssignment_1_1");
					put(grammarAccess.getNavigatingBarArgCSAccess().getPrefixAssignment_0(), "rule__NavigatingBarArgCS__PrefixAssignment_0");
					put(grammarAccess.getNavigatingBarArgCSAccess().getOwnedNameExpressionAssignment_1(), "rule__NavigatingBarArgCS__OwnedNameExpressionAssignment_1");
					put(grammarAccess.getNavigatingBarArgCSAccess().getOwnedTypeAssignment_2_1(), "rule__NavigatingBarArgCS__OwnedTypeAssignment_2_1");
					put(grammarAccess.getNavigatingBarArgCSAccess().getOwnedInitExpressionAssignment_2_2_1(), "rule__NavigatingBarArgCS__OwnedInitExpressionAssignment_2_2_1");
					put(grammarAccess.getNavigatingCommaArgCSAccess().getPrefixAssignment_0(), "rule__NavigatingCommaArgCS__PrefixAssignment_0");
					put(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedNameExpressionAssignment_1(), "rule__NavigatingCommaArgCS__OwnedNameExpressionAssignment_1");
					put(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedTypeAssignment_2_0_1(), "rule__NavigatingCommaArgCS__OwnedTypeAssignment_2_0_1");
					put(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedInitExpressionAssignment_2_0_2_1(), "rule__NavigatingCommaArgCS__OwnedInitExpressionAssignment_2_0_2_1");
					put(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedInitExpressionAssignment_2_1_1(), "rule__NavigatingCommaArgCS__OwnedInitExpressionAssignment_2_1_1");
					put(grammarAccess.getNavigatingSemiArgCSAccess().getPrefixAssignment_0(), "rule__NavigatingSemiArgCS__PrefixAssignment_0");
					put(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedNameExpressionAssignment_1(), "rule__NavigatingSemiArgCS__OwnedNameExpressionAssignment_1");
					put(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedTypeAssignment_2_1(), "rule__NavigatingSemiArgCS__OwnedTypeAssignment_2_1");
					put(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedInitExpressionAssignment_2_2_1(), "rule__NavigatingSemiArgCS__OwnedInitExpressionAssignment_2_2_1");
					put(grammarAccess.getIfExpCSAccess().getOwnedConditionAssignment_1(), "rule__IfExpCS__OwnedConditionAssignment_1");
					put(grammarAccess.getIfExpCSAccess().getOwnedThenExpressionAssignment_3(), "rule__IfExpCS__OwnedThenExpressionAssignment_3");
					put(grammarAccess.getIfExpCSAccess().getOwnedIfThenExpressionsAssignment_4(), "rule__IfExpCS__OwnedIfThenExpressionsAssignment_4");
					put(grammarAccess.getIfExpCSAccess().getOwnedElseExpressionAssignment_6(), "rule__IfExpCS__OwnedElseExpressionAssignment_6");
					put(grammarAccess.getElseIfThenExpCSAccess().getOwnedConditionAssignment_1(), "rule__ElseIfThenExpCS__OwnedConditionAssignment_1");
					put(grammarAccess.getElseIfThenExpCSAccess().getOwnedThenExpressionAssignment_3(), "rule__ElseIfThenExpCS__OwnedThenExpressionAssignment_3");
					put(grammarAccess.getLetExpCSAccess().getOwnedVariablesAssignment_1(), "rule__LetExpCS__OwnedVariablesAssignment_1");
					put(grammarAccess.getLetExpCSAccess().getOwnedVariablesAssignment_2_1(), "rule__LetExpCS__OwnedVariablesAssignment_2_1");
					put(grammarAccess.getLetExpCSAccess().getOwnedInExpressionAssignment_4(), "rule__LetExpCS__OwnedInExpressionAssignment_4");
					put(grammarAccess.getLetVariableCSAccess().getNameAssignment_0(), "rule__LetVariableCS__NameAssignment_0");
					put(grammarAccess.getLetVariableCSAccess().getOwnedRoundBracketedClauseAssignment_1(), "rule__LetVariableCS__OwnedRoundBracketedClauseAssignment_1");
					put(grammarAccess.getLetVariableCSAccess().getOwnedTypeAssignment_2_1(), "rule__LetVariableCS__OwnedTypeAssignment_2_1");
					put(grammarAccess.getLetVariableCSAccess().getOwnedInitExpressionAssignment_4(), "rule__LetVariableCS__OwnedInitExpressionAssignment_4");
					put(grammarAccess.getNestedExpCSAccess().getOwnedExpressionAssignment_1(), "rule__NestedExpCS__OwnedExpressionAssignment_1");
					put(grammarAccess.getMultiplicityBoundsCSAccess().getLowerBoundAssignment_0(), "rule__MultiplicityBoundsCS__LowerBoundAssignment_0");
					put(grammarAccess.getMultiplicityBoundsCSAccess().getUpperBoundAssignment_1_1(), "rule__MultiplicityBoundsCS__UpperBoundAssignment_1_1");
					put(grammarAccess.getMultiplicityCSAccess().getIsNullFreeAssignment_2_1(), "rule__MultiplicityCS__IsNullFreeAssignment_2_1");
					put(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsAssignment(), "rule__MultiplicityStringCS__StringBoundsAssignment");
					put(grammarAccess.getPathNameCSAccess().getOwnedPathElementsAssignment_0(), "rule__PathNameCS__OwnedPathElementsAssignment_0");
					put(grammarAccess.getPathNameCSAccess().getOwnedPathElementsAssignment_1_1(), "rule__PathNameCS__OwnedPathElementsAssignment_1_1");
					put(grammarAccess.getFirstPathElementCSAccess().getReferredElementAssignment(), "rule__FirstPathElementCS__ReferredElementAssignment");
					put(grammarAccess.getNextPathElementCSAccess().getReferredElementAssignment(), "rule__NextPathElementCS__ReferredElementAssignment");
					put(grammarAccess.getTemplateBindingCSAccess().getOwnedSubstitutionsAssignment_0(), "rule__TemplateBindingCS__OwnedSubstitutionsAssignment_0");
					put(grammarAccess.getTemplateBindingCSAccess().getOwnedSubstitutionsAssignment_1_1(), "rule__TemplateBindingCS__OwnedSubstitutionsAssignment_1_1");
					put(grammarAccess.getTemplateBindingCSAccess().getOwnedMultiplicityAssignment_2(), "rule__TemplateBindingCS__OwnedMultiplicityAssignment_2");
					put(grammarAccess.getTemplateParameterSubstitutionCSAccess().getOwnedActualParameterAssignment(), "rule__TemplateParameterSubstitutionCS__OwnedActualParameterAssignment");
					put(grammarAccess.getTemplateSignatureCSAccess().getOwnedParametersAssignment_1(), "rule__TemplateSignatureCS__OwnedParametersAssignment_1");
					put(grammarAccess.getTemplateSignatureCSAccess().getOwnedParametersAssignment_2_1(), "rule__TemplateSignatureCS__OwnedParametersAssignment_2_1");
					put(grammarAccess.getTypeParameterCSAccess().getNameAssignment_0(), "rule__TypeParameterCS__NameAssignment_0");
					put(grammarAccess.getTypeParameterCSAccess().getOwnedExtendsAssignment_1_1(), "rule__TypeParameterCS__OwnedExtendsAssignment_1_1");
					put(grammarAccess.getTypeParameterCSAccess().getOwnedExtendsAssignment_1_2_1(), "rule__TypeParameterCS__OwnedExtendsAssignment_1_2_1");
					put(grammarAccess.getTypedTypeRefCSAccess().getOwnedPathNameAssignment_0(), "rule__TypedTypeRefCS__OwnedPathNameAssignment_0");
					put(grammarAccess.getTypedTypeRefCSAccess().getOwnedBindingAssignment_1_1(), "rule__TypedTypeRefCS__OwnedBindingAssignment_1_1");
					put(grammarAccess.getWildcardTypeRefCSAccess().getOwnedExtendsAssignment_2_1(), "rule__WildcardTypeRefCS__OwnedExtendsAssignment_2_1");
				}
			};
		}
		return nameMappings.get(element);
	}
	
	@Override
	protected Collection<FollowElement> getFollowElements(AbstractInternalContentAssistParser parser) {
		try {
			org.eclipse.qvtd.xtext.qvtcore.ui.contentassist.antlr.internal.InternalQVTcoreParser typedParser = (org.eclipse.qvtd.xtext.qvtcore.ui.contentassist.antlr.internal.InternalQVTcoreParser) parser;
			typedParser.entryRuleTopLevelCS();
			return typedParser.getFollowElements();
		} catch(RecognitionException ex) {
			throw new RuntimeException(ex);
		}		
	}
	
	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}
	
	public QVTcoreGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}
	
	public void setGrammarAccess(QVTcoreGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}
