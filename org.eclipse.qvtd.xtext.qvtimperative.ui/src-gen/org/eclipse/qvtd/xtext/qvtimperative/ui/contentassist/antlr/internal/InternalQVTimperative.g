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
grammar InternalQVTimperative;

options {
	superClass=AbstractInternalContentAssistParser;
	backtrack=true;
	
}

@lexer::header {
package org.eclipse.qvtd.xtext.qvtimperative.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.qvtd.xtext.qvtimperative.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import org.eclipse.qvtd.xtext.qvtimperative.services.QVTimperativeGrammarAccess;

}

@parser::members {
 
 	private QVTimperativeGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(QVTimperativeGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleTopLevelCS
entryRuleTopLevelCS 
:
{ before(grammarAccess.getTopLevelCSRule()); }
	 ruleTopLevelCS
{ after(grammarAccess.getTopLevelCSRule()); } 
	 EOF 
;

// Rule TopLevelCS
ruleTopLevelCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTopLevelCSAccess().getGroup()); }
(rule__TopLevelCS__Group__0)
{ after(grammarAccess.getTopLevelCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleDirectionCS
entryRuleDirectionCS 
:
{ before(grammarAccess.getDirectionCSRule()); }
	 ruleDirectionCS
{ after(grammarAccess.getDirectionCSRule()); } 
	 EOF 
;

// Rule DirectionCS
ruleDirectionCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getDirectionCSAccess().getGroup()); }
(rule__DirectionCS__Group__0)
{ after(grammarAccess.getDirectionCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMappingCS
entryRuleMappingCS 
:
{ before(grammarAccess.getMappingCSRule()); }
	 ruleMappingCS
{ after(grammarAccess.getMappingCSRule()); } 
	 EOF 
;

// Rule MappingCS
ruleMappingCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMappingCSAccess().getGroup()); }
(rule__MappingCS__Group__0)
{ after(grammarAccess.getMappingCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMappingCallCS
entryRuleMappingCallCS 
:
{ before(grammarAccess.getMappingCallCSRule()); }
	 ruleMappingCallCS
{ after(grammarAccess.getMappingCallCSRule()); } 
	 EOF 
;

// Rule MappingCallCS
ruleMappingCallCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMappingCallCSAccess().getGroup()); }
(rule__MappingCallCS__Group__0)
{ after(grammarAccess.getMappingCallCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMappingCallBindingCS
entryRuleMappingCallBindingCS 
:
{ before(grammarAccess.getMappingCallBindingCSRule()); }
	 ruleMappingCallBindingCS
{ after(grammarAccess.getMappingCallBindingCSRule()); } 
	 EOF 
;

// Rule MappingCallBindingCS
ruleMappingCallBindingCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMappingCallBindingCSAccess().getGroup()); }
(rule__MappingCallBindingCS__Group__0)
{ after(grammarAccess.getMappingCallBindingCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMappingLoopCS
entryRuleMappingLoopCS 
:
{ before(grammarAccess.getMappingLoopCSRule()); }
	 ruleMappingLoopCS
{ after(grammarAccess.getMappingLoopCSRule()); } 
	 EOF 
;

// Rule MappingLoopCS
ruleMappingLoopCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMappingLoopCSAccess().getGroup()); }
(rule__MappingLoopCS__Group__0)
{ after(grammarAccess.getMappingLoopCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMappingIteratorCS
entryRuleMappingIteratorCS 
:
{ before(grammarAccess.getMappingIteratorCSRule()); }
	 ruleMappingIteratorCS
{ after(grammarAccess.getMappingIteratorCSRule()); } 
	 EOF 
;

// Rule MappingIteratorCS
ruleMappingIteratorCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMappingIteratorCSAccess().getGroup()); }
(rule__MappingIteratorCS__Group__0)
{ after(grammarAccess.getMappingIteratorCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMappingSequenceCS
entryRuleMappingSequenceCS 
:
{ before(grammarAccess.getMappingSequenceCSRule()); }
	 ruleMappingSequenceCS
{ after(grammarAccess.getMappingSequenceCSRule()); } 
	 EOF 
;

// Rule MappingSequenceCS
ruleMappingSequenceCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
(
{ before(grammarAccess.getMappingSequenceCSAccess().getOwnedMappingStatementsAssignment()); }
(rule__MappingSequenceCS__OwnedMappingStatementsAssignment)
{ after(grammarAccess.getMappingSequenceCSAccess().getOwnedMappingStatementsAssignment()); }
)
(
{ before(grammarAccess.getMappingSequenceCSAccess().getOwnedMappingStatementsAssignment()); }
(rule__MappingSequenceCS__OwnedMappingStatementsAssignment)*
{ after(grammarAccess.getMappingSequenceCSAccess().getOwnedMappingStatementsAssignment()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMappingStatementCS
entryRuleMappingStatementCS 
:
{ before(grammarAccess.getMappingStatementCSRule()); }
	 ruleMappingStatementCS
{ after(grammarAccess.getMappingStatementCSRule()); } 
	 EOF 
;

// Rule MappingStatementCS
ruleMappingStatementCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMappingStatementCSAccess().getAlternatives()); }
(rule__MappingStatementCS__Alternatives)
{ after(grammarAccess.getMappingStatementCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleImperativePredicateOrAssignmentCS
entryRuleImperativePredicateOrAssignmentCS 
:
{ before(grammarAccess.getImperativePredicateOrAssignmentCSRule()); }
	 ruleImperativePredicateOrAssignmentCS
{ after(grammarAccess.getImperativePredicateOrAssignmentCSRule()); } 
	 EOF 
;

// Rule ImperativePredicateOrAssignmentCS
ruleImperativePredicateOrAssignmentCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getGroup()); }
(rule__ImperativePredicateOrAssignmentCS__Group__0)
{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleSourceDomainCS
entryRuleSourceDomainCS 
:
{ before(grammarAccess.getSourceDomainCSRule()); }
	 ruleSourceDomainCS
{ after(grammarAccess.getSourceDomainCSRule()); } 
	 EOF 
;

// Rule SourceDomainCS
ruleSourceDomainCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getSourceDomainCSAccess().getGroup()); }
(rule__SourceDomainCS__Group__0)
{ after(grammarAccess.getSourceDomainCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleSourceBottomPatternCS
entryRuleSourceBottomPatternCS 
:
{ before(grammarAccess.getSourceBottomPatternCSRule()); }
	 ruleSourceBottomPatternCS
{ after(grammarAccess.getSourceBottomPatternCSRule()); } 
	 EOF 
;

// Rule SourceBottomPatternCS
ruleSourceBottomPatternCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getSourceBottomPatternCSAccess().getGroup()); }
(rule__SourceBottomPatternCS__Group__0)
{ after(grammarAccess.getSourceBottomPatternCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleSourceGuardPatternCS
entryRuleSourceGuardPatternCS 
:
{ before(grammarAccess.getSourceGuardPatternCSRule()); }
	 ruleSourceGuardPatternCS
{ after(grammarAccess.getSourceGuardPatternCSRule()); } 
	 EOF 
;

// Rule SourceGuardPatternCS
ruleSourceGuardPatternCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getSourceGuardPatternCSAccess().getGroup()); }
(rule__SourceGuardPatternCS__Group__0)
{ after(grammarAccess.getSourceGuardPatternCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMiddleDomainCS
entryRuleMiddleDomainCS 
:
{ before(grammarAccess.getMiddleDomainCSRule()); }
	 ruleMiddleDomainCS
{ after(grammarAccess.getMiddleDomainCSRule()); } 
	 EOF 
;

// Rule MiddleDomainCS
ruleMiddleDomainCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getGroup()); }
(rule__MiddleDomainCS__Group__0)
{ after(grammarAccess.getMiddleDomainCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMiddleBottomPatternCS
entryRuleMiddleBottomPatternCS 
:
{ before(grammarAccess.getMiddleBottomPatternCSRule()); }
	 ruleMiddleBottomPatternCS
{ after(grammarAccess.getMiddleBottomPatternCSRule()); } 
	 EOF 
;

// Rule MiddleBottomPatternCS
ruleMiddleBottomPatternCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getAlternatives()); }
(rule__MiddleBottomPatternCS__Alternatives)
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMiddleGuardPatternCS
entryRuleMiddleGuardPatternCS 
:
{ before(grammarAccess.getMiddleGuardPatternCSRule()); }
	 ruleMiddleGuardPatternCS
{ after(grammarAccess.getMiddleGuardPatternCSRule()); } 
	 EOF 
;

// Rule MiddleGuardPatternCS
ruleMiddleGuardPatternCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMiddleGuardPatternCSAccess().getGuardPatternCSParserRuleCall()); }
	ruleGuardPatternCS
{ after(grammarAccess.getMiddleGuardPatternCSAccess().getGuardPatternCSParserRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTargetDomainCS
entryRuleTargetDomainCS 
:
{ before(grammarAccess.getTargetDomainCSRule()); }
	 ruleTargetDomainCS
{ after(grammarAccess.getTargetDomainCSRule()); } 
	 EOF 
;

// Rule TargetDomainCS
ruleTargetDomainCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTargetDomainCSAccess().getGroup()); }
(rule__TargetDomainCS__Group__0)
{ after(grammarAccess.getTargetDomainCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTargetBottomPatternCS
entryRuleTargetBottomPatternCS 
:
{ before(grammarAccess.getTargetBottomPatternCSRule()); }
	 ruleTargetBottomPatternCS
{ after(grammarAccess.getTargetBottomPatternCSRule()); } 
	 EOF 
;

// Rule TargetBottomPatternCS
ruleTargetBottomPatternCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getGroup()); }
(rule__TargetBottomPatternCS__Group__0)
{ after(grammarAccess.getTargetBottomPatternCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTargetGuardPatternCS
entryRuleTargetGuardPatternCS 
:
{ before(grammarAccess.getTargetGuardPatternCSRule()); }
	 ruleTargetGuardPatternCS
{ after(grammarAccess.getTargetGuardPatternCSRule()); } 
	 EOF 
;

// Rule TargetGuardPatternCS
ruleTargetGuardPatternCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTargetGuardPatternCSAccess().getGroup()); }
(rule__TargetGuardPatternCS__Group__0)
{ after(grammarAccess.getTargetGuardPatternCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleBottomPatternCS
entryRuleBottomPatternCS 
:
{ before(grammarAccess.getBottomPatternCSRule()); }
	 ruleBottomPatternCS
{ after(grammarAccess.getBottomPatternCSRule()); } 
	 EOF 
;

// Rule BottomPatternCS
ruleBottomPatternCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getBottomPatternCSAccess().getAlternatives()); }
(rule__BottomPatternCS__Alternatives)
{ after(grammarAccess.getBottomPatternCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleGuardPatternCS
entryRuleGuardPatternCS 
:
{ before(grammarAccess.getGuardPatternCSRule()); }
	 ruleGuardPatternCS
{ after(grammarAccess.getGuardPatternCSRule()); } 
	 EOF 
;

// Rule GuardPatternCS
ruleGuardPatternCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getGuardPatternCSAccess().getAlternatives()); }
(rule__GuardPatternCS__Alternatives)
{ after(grammarAccess.getGuardPatternCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleGuardVariableCS
entryRuleGuardVariableCS 
:
{ before(grammarAccess.getGuardVariableCSRule()); }
	 ruleGuardVariableCS
{ after(grammarAccess.getGuardVariableCSRule()); } 
	 EOF 
;

// Rule GuardVariableCS
ruleGuardVariableCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getGuardVariableCSAccess().getGroup()); }
(rule__GuardVariableCS__Group__0)
{ after(grammarAccess.getGuardVariableCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleImportCS
entryRuleImportCS 
:
{ before(grammarAccess.getImportCSRule()); }
	 ruleImportCS
{ after(grammarAccess.getImportCSRule()); } 
	 EOF 
;

// Rule ImportCS
ruleImportCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getImportCSAccess().getGroup()); }
(rule__ImportCS__Group__0)
{ after(grammarAccess.getImportCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}





// Entry rule entryRuleParamDeclarationCS
entryRuleParamDeclarationCS 
:
{ before(grammarAccess.getParamDeclarationCSRule()); }
	 ruleParamDeclarationCS
{ after(grammarAccess.getParamDeclarationCSRule()); } 
	 EOF 
;

// Rule ParamDeclarationCS
ruleParamDeclarationCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getParamDeclarationCSAccess().getGroup()); }
(rule__ParamDeclarationCS__Group__0)
{ after(grammarAccess.getParamDeclarationCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePredicateCS
entryRulePredicateCS 
:
{ before(grammarAccess.getPredicateCSRule()); }
	 rulePredicateCS
{ after(grammarAccess.getPredicateCSRule()); } 
	 EOF 
;

// Rule PredicateCS
rulePredicateCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPredicateCSAccess().getGroup()); }
(rule__PredicateCS__Group__0)
{ after(grammarAccess.getPredicateCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePredicateOrAssignmentCS
entryRulePredicateOrAssignmentCS 
:
{ before(grammarAccess.getPredicateOrAssignmentCSRule()); }
	 rulePredicateOrAssignmentCS
{ after(grammarAccess.getPredicateOrAssignmentCSRule()); } 
	 EOF 
;

// Rule PredicateOrAssignmentCS
rulePredicateOrAssignmentCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPredicateOrAssignmentCSAccess().getGroup()); }
(rule__PredicateOrAssignmentCS__Group__0)
{ after(grammarAccess.getPredicateOrAssignmentCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleQueryCS
entryRuleQueryCS 
:
{ before(grammarAccess.getQueryCSRule()); }
	 ruleQueryCS
{ after(grammarAccess.getQueryCSRule()); } 
	 EOF 
;

// Rule QueryCS
ruleQueryCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getQueryCSAccess().getGroup()); }
(rule__QueryCS__Group__0)
{ after(grammarAccess.getQueryCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleScopeNameCS
entryRuleScopeNameCS 
:
{ before(grammarAccess.getScopeNameCSRule()); }
	 ruleScopeNameCS
{ after(grammarAccess.getScopeNameCSRule()); } 
	 EOF 
;

// Rule ScopeNameCS
ruleScopeNameCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getScopeNameCSAccess().getGroup()); }
(rule__ScopeNameCS__Group__0)
{ after(grammarAccess.getScopeNameCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTransformationCS
entryRuleTransformationCS 
:
{ before(grammarAccess.getTransformationCSRule()); }
	 ruleTransformationCS
{ after(grammarAccess.getTransformationCSRule()); } 
	 EOF 
;

// Rule TransformationCS
ruleTransformationCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTransformationCSAccess().getGroup()); }
(rule__TransformationCS__Group__0)
{ after(grammarAccess.getTransformationCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleUnrealizedVariableCS
entryRuleUnrealizedVariableCS 
:
{ before(grammarAccess.getUnrealizedVariableCSRule()); }
	 ruleUnrealizedVariableCS
{ after(grammarAccess.getUnrealizedVariableCSRule()); } 
	 EOF 
;

// Rule UnrealizedVariableCS
ruleUnrealizedVariableCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getUnrealizedVariableCSAccess().getGroup()); }
(rule__UnrealizedVariableCS__Group__0)
{ after(grammarAccess.getUnrealizedVariableCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleRealizedVariableCS
entryRuleRealizedVariableCS 
:
{ before(grammarAccess.getRealizedVariableCSRule()); }
	 ruleRealizedVariableCS
{ after(grammarAccess.getRealizedVariableCSRule()); } 
	 EOF 
;

// Rule RealizedVariableCS
ruleRealizedVariableCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getRealizedVariableCSAccess().getGroup()); }
(rule__RealizedVariableCS__Group__0)
{ after(grammarAccess.getRealizedVariableCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}





// Entry rule entryRuleUnrestrictedName
entryRuleUnrestrictedName 
:
{ before(grammarAccess.getUnrestrictedNameRule()); }
	 ruleUnrestrictedName
{ after(grammarAccess.getUnrestrictedNameRule()); } 
	 EOF 
;

// Rule UnrestrictedName
ruleUnrestrictedName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getUnrestrictedNameAccess().getAlternatives()); }
(rule__UnrestrictedName__Alternatives)
{ after(grammarAccess.getUnrestrictedNameAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}







// Entry rule entryRuleEssentialOCLUnaryOperatorName
entryRuleEssentialOCLUnaryOperatorName 
:
{ before(grammarAccess.getEssentialOCLUnaryOperatorNameRule()); }
	 ruleEssentialOCLUnaryOperatorName
{ after(grammarAccess.getEssentialOCLUnaryOperatorNameRule()); } 
	 EOF 
;

// Rule EssentialOCLUnaryOperatorName
ruleEssentialOCLUnaryOperatorName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEssentialOCLUnaryOperatorNameAccess().getAlternatives()); }
(rule__EssentialOCLUnaryOperatorName__Alternatives)
{ after(grammarAccess.getEssentialOCLUnaryOperatorNameAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEssentialOCLInfixOperatorName
entryRuleEssentialOCLInfixOperatorName 
:
{ before(grammarAccess.getEssentialOCLInfixOperatorNameRule()); }
	 ruleEssentialOCLInfixOperatorName
{ after(grammarAccess.getEssentialOCLInfixOperatorNameRule()); } 
	 EOF 
;

// Rule EssentialOCLInfixOperatorName
ruleEssentialOCLInfixOperatorName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getAlternatives()); }
(rule__EssentialOCLInfixOperatorName__Alternatives)
{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEssentialOCLNavigationOperatorName
entryRuleEssentialOCLNavigationOperatorName 
:
{ before(grammarAccess.getEssentialOCLNavigationOperatorNameRule()); }
	 ruleEssentialOCLNavigationOperatorName
{ after(grammarAccess.getEssentialOCLNavigationOperatorNameRule()); } 
	 EOF 
;

// Rule EssentialOCLNavigationOperatorName
ruleEssentialOCLNavigationOperatorName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEssentialOCLNavigationOperatorNameAccess().getAlternatives()); }
(rule__EssentialOCLNavigationOperatorName__Alternatives)
{ after(grammarAccess.getEssentialOCLNavigationOperatorNameAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleBinaryOperatorName
entryRuleBinaryOperatorName 
:
{ before(grammarAccess.getBinaryOperatorNameRule()); }
	 ruleBinaryOperatorName
{ after(grammarAccess.getBinaryOperatorNameRule()); } 
	 EOF 
;

// Rule BinaryOperatorName
ruleBinaryOperatorName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getBinaryOperatorNameAccess().getAlternatives()); }
(rule__BinaryOperatorName__Alternatives)
{ after(grammarAccess.getBinaryOperatorNameAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleInfixOperatorName
entryRuleInfixOperatorName 
:
{ before(grammarAccess.getInfixOperatorNameRule()); }
	 ruleInfixOperatorName
{ after(grammarAccess.getInfixOperatorNameRule()); } 
	 EOF 
;

// Rule InfixOperatorName
ruleInfixOperatorName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getInfixOperatorNameAccess().getEssentialOCLInfixOperatorNameParserRuleCall()); }
	ruleEssentialOCLInfixOperatorName
{ after(grammarAccess.getInfixOperatorNameAccess().getEssentialOCLInfixOperatorNameParserRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNavigationOperatorName
entryRuleNavigationOperatorName 
:
{ before(grammarAccess.getNavigationOperatorNameRule()); }
	 ruleNavigationOperatorName
{ after(grammarAccess.getNavigationOperatorNameRule()); } 
	 EOF 
;

// Rule NavigationOperatorName
ruleNavigationOperatorName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNavigationOperatorNameAccess().getEssentialOCLNavigationOperatorNameParserRuleCall()); }
	ruleEssentialOCLNavigationOperatorName
{ after(grammarAccess.getNavigationOperatorNameAccess().getEssentialOCLNavigationOperatorNameParserRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleUnaryOperatorName
entryRuleUnaryOperatorName 
:
{ before(grammarAccess.getUnaryOperatorNameRule()); }
	 ruleUnaryOperatorName
{ after(grammarAccess.getUnaryOperatorNameRule()); } 
	 EOF 
;

// Rule UnaryOperatorName
ruleUnaryOperatorName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getUnaryOperatorNameAccess().getEssentialOCLUnaryOperatorNameParserRuleCall()); }
	ruleEssentialOCLUnaryOperatorName
{ after(grammarAccess.getUnaryOperatorNameAccess().getEssentialOCLUnaryOperatorNameParserRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEssentialOCLUnrestrictedName
entryRuleEssentialOCLUnrestrictedName 
:
{ before(grammarAccess.getEssentialOCLUnrestrictedNameRule()); }
	 ruleEssentialOCLUnrestrictedName
{ after(grammarAccess.getEssentialOCLUnrestrictedNameRule()); } 
	 EOF 
;

// Rule EssentialOCLUnrestrictedName
ruleEssentialOCLUnrestrictedName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEssentialOCLUnrestrictedNameAccess().getIdentifierParserRuleCall()); }
	ruleIdentifier
{ after(grammarAccess.getEssentialOCLUnrestrictedNameAccess().getIdentifierParserRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEssentialOCLUnreservedName
entryRuleEssentialOCLUnreservedName 
:
{ before(grammarAccess.getEssentialOCLUnreservedNameRule()); }
	 ruleEssentialOCLUnreservedName
{ after(grammarAccess.getEssentialOCLUnreservedNameRule()); } 
	 EOF 
;

// Rule EssentialOCLUnreservedName
ruleEssentialOCLUnreservedName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEssentialOCLUnreservedNameAccess().getAlternatives()); }
(rule__EssentialOCLUnreservedName__Alternatives)
{ after(grammarAccess.getEssentialOCLUnreservedNameAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleUnreservedName
entryRuleUnreservedName 
:
{ before(grammarAccess.getUnreservedNameRule()); }
	 ruleUnreservedName
{ after(grammarAccess.getUnreservedNameRule()); } 
	 EOF 
;

// Rule UnreservedName
ruleUnreservedName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getUnreservedNameAccess().getEssentialOCLUnreservedNameParserRuleCall()); }
	ruleEssentialOCLUnreservedName
{ after(grammarAccess.getUnreservedNameAccess().getEssentialOCLUnreservedNameParserRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleURIPathNameCS
entryRuleURIPathNameCS 
:
{ before(grammarAccess.getURIPathNameCSRule()); }
	 ruleURIPathNameCS
{ after(grammarAccess.getURIPathNameCSRule()); } 
	 EOF 
;

// Rule URIPathNameCS
ruleURIPathNameCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getURIPathNameCSAccess().getGroup()); }
(rule__URIPathNameCS__Group__0)
{ after(grammarAccess.getURIPathNameCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleURIFirstPathElementCS
entryRuleURIFirstPathElementCS 
:
{ before(grammarAccess.getURIFirstPathElementCSRule()); }
	 ruleURIFirstPathElementCS
{ after(grammarAccess.getURIFirstPathElementCSRule()); } 
	 EOF 
;

// Rule URIFirstPathElementCS
ruleURIFirstPathElementCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getURIFirstPathElementCSAccess().getAlternatives()); }
(rule__URIFirstPathElementCS__Alternatives)
{ after(grammarAccess.getURIFirstPathElementCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePrimitiveTypeIdentifier
entryRulePrimitiveTypeIdentifier 
:
{ before(grammarAccess.getPrimitiveTypeIdentifierRule()); }
	 rulePrimitiveTypeIdentifier
{ after(grammarAccess.getPrimitiveTypeIdentifierRule()); } 
	 EOF 
;

// Rule PrimitiveTypeIdentifier
rulePrimitiveTypeIdentifier
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getAlternatives()); }
(rule__PrimitiveTypeIdentifier__Alternatives)
{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePrimitiveTypeCS
entryRulePrimitiveTypeCS 
:
{ before(grammarAccess.getPrimitiveTypeCSRule()); }
	 rulePrimitiveTypeCS
{ after(grammarAccess.getPrimitiveTypeCSRule()); } 
	 EOF 
;

// Rule PrimitiveTypeCS
rulePrimitiveTypeCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPrimitiveTypeCSAccess().getNameAssignment()); }
(rule__PrimitiveTypeCS__NameAssignment)
{ after(grammarAccess.getPrimitiveTypeCSAccess().getNameAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleCollectionTypeIdentifier
entryRuleCollectionTypeIdentifier 
:
{ before(grammarAccess.getCollectionTypeIdentifierRule()); }
	 ruleCollectionTypeIdentifier
{ after(grammarAccess.getCollectionTypeIdentifierRule()); } 
	 EOF 
;

// Rule CollectionTypeIdentifier
ruleCollectionTypeIdentifier
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getCollectionTypeIdentifierAccess().getAlternatives()); }
(rule__CollectionTypeIdentifier__Alternatives)
{ after(grammarAccess.getCollectionTypeIdentifierAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleCollectionTypeCS
entryRuleCollectionTypeCS 
:
{ before(grammarAccess.getCollectionTypeCSRule()); }
	 ruleCollectionTypeCS
{ after(grammarAccess.getCollectionTypeCSRule()); } 
	 EOF 
;

// Rule CollectionTypeCS
ruleCollectionTypeCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getCollectionTypeCSAccess().getGroup()); }
(rule__CollectionTypeCS__Group__0)
{ after(grammarAccess.getCollectionTypeCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMapTypeCS
entryRuleMapTypeCS 
:
{ before(grammarAccess.getMapTypeCSRule()); }
	 ruleMapTypeCS
{ after(grammarAccess.getMapTypeCSRule()); } 
	 EOF 
;

// Rule MapTypeCS
ruleMapTypeCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMapTypeCSAccess().getGroup()); }
(rule__MapTypeCS__Group__0)
{ after(grammarAccess.getMapTypeCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTupleTypeCS
entryRuleTupleTypeCS 
:
{ before(grammarAccess.getTupleTypeCSRule()); }
	 ruleTupleTypeCS
{ after(grammarAccess.getTupleTypeCSRule()); } 
	 EOF 
;

// Rule TupleTypeCS
ruleTupleTypeCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTupleTypeCSAccess().getGroup()); }
(rule__TupleTypeCS__Group__0)
{ after(grammarAccess.getTupleTypeCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTuplePartCS
entryRuleTuplePartCS 
:
{ before(grammarAccess.getTuplePartCSRule()); }
	 ruleTuplePartCS
{ after(grammarAccess.getTuplePartCSRule()); } 
	 EOF 
;

// Rule TuplePartCS
ruleTuplePartCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTuplePartCSAccess().getGroup()); }
(rule__TuplePartCS__Group__0)
{ after(grammarAccess.getTuplePartCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleCollectionLiteralExpCS
entryRuleCollectionLiteralExpCS 
:
{ before(grammarAccess.getCollectionLiteralExpCSRule()); }
	 ruleCollectionLiteralExpCS
{ after(grammarAccess.getCollectionLiteralExpCSRule()); } 
	 EOF 
;

// Rule CollectionLiteralExpCS
ruleCollectionLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getGroup()); }
(rule__CollectionLiteralExpCS__Group__0)
{ after(grammarAccess.getCollectionLiteralExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleCollectionLiteralPartCS
entryRuleCollectionLiteralPartCS 
:
{ before(grammarAccess.getCollectionLiteralPartCSRule()); }
	 ruleCollectionLiteralPartCS
{ after(grammarAccess.getCollectionLiteralPartCSRule()); } 
	 EOF 
;

// Rule CollectionLiteralPartCS
ruleCollectionLiteralPartCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getCollectionLiteralPartCSAccess().getAlternatives()); }
(rule__CollectionLiteralPartCS__Alternatives)
{ after(grammarAccess.getCollectionLiteralPartCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleCollectionPatternCS
entryRuleCollectionPatternCS 
:
{ before(grammarAccess.getCollectionPatternCSRule()); }
	 ruleCollectionPatternCS
{ after(grammarAccess.getCollectionPatternCSRule()); } 
	 EOF 
;

// Rule CollectionPatternCS
ruleCollectionPatternCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getGroup()); }
(rule__CollectionPatternCS__Group__0)
{ after(grammarAccess.getCollectionPatternCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleShadowPartCS
entryRuleShadowPartCS 
:
{ before(grammarAccess.getShadowPartCSRule()); }
	 ruleShadowPartCS
{ after(grammarAccess.getShadowPartCSRule()); } 
	 EOF 
;

// Rule ShadowPartCS
ruleShadowPartCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getShadowPartCSAccess().getGroup()); }
(rule__ShadowPartCS__Group__0)
{ after(grammarAccess.getShadowPartCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePatternExpCS
entryRulePatternExpCS 
:
{ before(grammarAccess.getPatternExpCSRule()); }
	 rulePatternExpCS
{ after(grammarAccess.getPatternExpCSRule()); } 
	 EOF 
;

// Rule PatternExpCS
rulePatternExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPatternExpCSAccess().getGroup()); }
(rule__PatternExpCS__Group__0)
{ after(grammarAccess.getPatternExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleLambdaLiteralExpCS
entryRuleLambdaLiteralExpCS 
:
{ before(grammarAccess.getLambdaLiteralExpCSRule()); }
	 ruleLambdaLiteralExpCS
{ after(grammarAccess.getLambdaLiteralExpCSRule()); } 
	 EOF 
;

// Rule LambdaLiteralExpCS
ruleLambdaLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getLambdaLiteralExpCSAccess().getGroup()); }
(rule__LambdaLiteralExpCS__Group__0)
{ after(grammarAccess.getLambdaLiteralExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMapLiteralExpCS
entryRuleMapLiteralExpCS 
:
{ before(grammarAccess.getMapLiteralExpCSRule()); }
	 ruleMapLiteralExpCS
{ after(grammarAccess.getMapLiteralExpCSRule()); } 
	 EOF 
;

// Rule MapLiteralExpCS
ruleMapLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getGroup()); }
(rule__MapLiteralExpCS__Group__0)
{ after(grammarAccess.getMapLiteralExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMapLiteralPartCS
entryRuleMapLiteralPartCS 
:
{ before(grammarAccess.getMapLiteralPartCSRule()); }
	 ruleMapLiteralPartCS
{ after(grammarAccess.getMapLiteralPartCSRule()); } 
	 EOF 
;

// Rule MapLiteralPartCS
ruleMapLiteralPartCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMapLiteralPartCSAccess().getGroup()); }
(rule__MapLiteralPartCS__Group__0)
{ after(grammarAccess.getMapLiteralPartCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePrimitiveLiteralExpCS
entryRulePrimitiveLiteralExpCS 
:
{ before(grammarAccess.getPrimitiveLiteralExpCSRule()); }
	 rulePrimitiveLiteralExpCS
{ after(grammarAccess.getPrimitiveLiteralExpCSRule()); } 
	 EOF 
;

// Rule PrimitiveLiteralExpCS
rulePrimitiveLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPrimitiveLiteralExpCSAccess().getAlternatives()); }
(rule__PrimitiveLiteralExpCS__Alternatives)
{ after(grammarAccess.getPrimitiveLiteralExpCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTupleLiteralExpCS
entryRuleTupleLiteralExpCS 
:
{ before(grammarAccess.getTupleLiteralExpCSRule()); }
	 ruleTupleLiteralExpCS
{ after(grammarAccess.getTupleLiteralExpCSRule()); } 
	 EOF 
;

// Rule TupleLiteralExpCS
ruleTupleLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTupleLiteralExpCSAccess().getGroup()); }
(rule__TupleLiteralExpCS__Group__0)
{ after(grammarAccess.getTupleLiteralExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTupleLiteralPartCS
entryRuleTupleLiteralPartCS 
:
{ before(grammarAccess.getTupleLiteralPartCSRule()); }
	 ruleTupleLiteralPartCS
{ after(grammarAccess.getTupleLiteralPartCSRule()); } 
	 EOF 
;

// Rule TupleLiteralPartCS
ruleTupleLiteralPartCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTupleLiteralPartCSAccess().getGroup()); }
(rule__TupleLiteralPartCS__Group__0)
{ after(grammarAccess.getTupleLiteralPartCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNumberLiteralExpCS
entryRuleNumberLiteralExpCS 
:
{ before(grammarAccess.getNumberLiteralExpCSRule()); }
	 ruleNumberLiteralExpCS
{ after(grammarAccess.getNumberLiteralExpCSRule()); } 
	 EOF 
;

// Rule NumberLiteralExpCS
ruleNumberLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNumberLiteralExpCSAccess().getSymbolAssignment()); }
(rule__NumberLiteralExpCS__SymbolAssignment)
{ after(grammarAccess.getNumberLiteralExpCSAccess().getSymbolAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleStringLiteralExpCS
entryRuleStringLiteralExpCS 
:
{ before(grammarAccess.getStringLiteralExpCSRule()); }
	 ruleStringLiteralExpCS
{ after(grammarAccess.getStringLiteralExpCSRule()); } 
	 EOF 
;

// Rule StringLiteralExpCS
ruleStringLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
(
{ before(grammarAccess.getStringLiteralExpCSAccess().getSegmentsAssignment()); }
(rule__StringLiteralExpCS__SegmentsAssignment)
{ after(grammarAccess.getStringLiteralExpCSAccess().getSegmentsAssignment()); }
)
(
{ before(grammarAccess.getStringLiteralExpCSAccess().getSegmentsAssignment()); }
(rule__StringLiteralExpCS__SegmentsAssignment)*
{ after(grammarAccess.getStringLiteralExpCSAccess().getSegmentsAssignment()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleBooleanLiteralExpCS
entryRuleBooleanLiteralExpCS 
:
{ before(grammarAccess.getBooleanLiteralExpCSRule()); }
	 ruleBooleanLiteralExpCS
{ after(grammarAccess.getBooleanLiteralExpCSRule()); } 
	 EOF 
;

// Rule BooleanLiteralExpCS
ruleBooleanLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getBooleanLiteralExpCSAccess().getAlternatives()); }
(rule__BooleanLiteralExpCS__Alternatives)
{ after(grammarAccess.getBooleanLiteralExpCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleUnlimitedNaturalLiteralExpCS
entryRuleUnlimitedNaturalLiteralExpCS 
:
{ before(grammarAccess.getUnlimitedNaturalLiteralExpCSRule()); }
	 ruleUnlimitedNaturalLiteralExpCS
{ after(grammarAccess.getUnlimitedNaturalLiteralExpCSRule()); } 
	 EOF 
;

// Rule UnlimitedNaturalLiteralExpCS
ruleUnlimitedNaturalLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getUnlimitedNaturalLiteralExpCSAccess().getGroup()); }
(rule__UnlimitedNaturalLiteralExpCS__Group__0)
{ after(grammarAccess.getUnlimitedNaturalLiteralExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleInvalidLiteralExpCS
entryRuleInvalidLiteralExpCS 
:
{ before(grammarAccess.getInvalidLiteralExpCSRule()); }
	 ruleInvalidLiteralExpCS
{ after(grammarAccess.getInvalidLiteralExpCSRule()); } 
	 EOF 
;

// Rule InvalidLiteralExpCS
ruleInvalidLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getInvalidLiteralExpCSAccess().getGroup()); }
(rule__InvalidLiteralExpCS__Group__0)
{ after(grammarAccess.getInvalidLiteralExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNullLiteralExpCS
entryRuleNullLiteralExpCS 
:
{ before(grammarAccess.getNullLiteralExpCSRule()); }
	 ruleNullLiteralExpCS
{ after(grammarAccess.getNullLiteralExpCSRule()); } 
	 EOF 
;

// Rule NullLiteralExpCS
ruleNullLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNullLiteralExpCSAccess().getGroup()); }
(rule__NullLiteralExpCS__Group__0)
{ after(grammarAccess.getNullLiteralExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTypeLiteralCS
entryRuleTypeLiteralCS 
:
{ before(grammarAccess.getTypeLiteralCSRule()); }
	 ruleTypeLiteralCS
{ after(grammarAccess.getTypeLiteralCSRule()); } 
	 EOF 
;

// Rule TypeLiteralCS
ruleTypeLiteralCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTypeLiteralCSAccess().getAlternatives()); }
(rule__TypeLiteralCS__Alternatives)
{ after(grammarAccess.getTypeLiteralCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTypeLiteralWithMultiplicityCS
entryRuleTypeLiteralWithMultiplicityCS 
:
{ before(grammarAccess.getTypeLiteralWithMultiplicityCSRule()); }
	 ruleTypeLiteralWithMultiplicityCS
{ after(grammarAccess.getTypeLiteralWithMultiplicityCSRule()); } 
	 EOF 
;

// Rule TypeLiteralWithMultiplicityCS
ruleTypeLiteralWithMultiplicityCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTypeLiteralWithMultiplicityCSAccess().getGroup()); }
(rule__TypeLiteralWithMultiplicityCS__Group__0)
{ after(grammarAccess.getTypeLiteralWithMultiplicityCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTypeLiteralExpCS
entryRuleTypeLiteralExpCS 
:
{ before(grammarAccess.getTypeLiteralExpCSRule()); }
	 ruleTypeLiteralExpCS
{ after(grammarAccess.getTypeLiteralExpCSRule()); } 
	 EOF 
;

// Rule TypeLiteralExpCS
ruleTypeLiteralExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTypeLiteralExpCSAccess().getOwnedTypeAssignment()); }
(rule__TypeLiteralExpCS__OwnedTypeAssignment)
{ after(grammarAccess.getTypeLiteralExpCSAccess().getOwnedTypeAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTypeNameExpCS
entryRuleTypeNameExpCS 
:
{ before(grammarAccess.getTypeNameExpCSRule()); }
	 ruleTypeNameExpCS
{ after(grammarAccess.getTypeNameExpCSRule()); } 
	 EOF 
;

// Rule TypeNameExpCS
ruleTypeNameExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTypeNameExpCSAccess().getGroup()); }
(rule__TypeNameExpCS__Group__0)
{ after(grammarAccess.getTypeNameExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTypeExpCS
entryRuleTypeExpCS 
:
{ before(grammarAccess.getTypeExpCSRule()); }
	 ruleTypeExpCS
{ after(grammarAccess.getTypeExpCSRule()); } 
	 EOF 
;

// Rule TypeExpCS
ruleTypeExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTypeExpCSAccess().getGroup()); }
(rule__TypeExpCS__Group__0)
{ after(grammarAccess.getTypeExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleExpCS
entryRuleExpCS 
:
{ before(grammarAccess.getExpCSRule()); }
	 ruleExpCS
{ after(grammarAccess.getExpCSRule()); } 
	 EOF 
;

// Rule ExpCS
ruleExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getExpCSAccess().getAlternatives()); }
(rule__ExpCS__Alternatives)
{ after(grammarAccess.getExpCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePrefixedLetExpCS
entryRulePrefixedLetExpCS 
:
{ before(grammarAccess.getPrefixedLetExpCSRule()); }
	 rulePrefixedLetExpCS
{ after(grammarAccess.getPrefixedLetExpCSRule()); } 
	 EOF 
;

// Rule PrefixedLetExpCS
rulePrefixedLetExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPrefixedLetExpCSAccess().getAlternatives()); }
(rule__PrefixedLetExpCS__Alternatives)
{ after(grammarAccess.getPrefixedLetExpCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePrefixedPrimaryExpCS
entryRulePrefixedPrimaryExpCS 
:
{ before(grammarAccess.getPrefixedPrimaryExpCSRule()); }
	 rulePrefixedPrimaryExpCS
{ after(grammarAccess.getPrefixedPrimaryExpCSRule()); } 
	 EOF 
;

// Rule PrefixedPrimaryExpCS
rulePrefixedPrimaryExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPrefixedPrimaryExpCSAccess().getAlternatives()); }
(rule__PrefixedPrimaryExpCS__Alternatives)
{ after(grammarAccess.getPrefixedPrimaryExpCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePrimaryExpCS
entryRulePrimaryExpCS 
:
{ before(grammarAccess.getPrimaryExpCSRule()); }
	 rulePrimaryExpCS
{ after(grammarAccess.getPrimaryExpCSRule()); } 
	 EOF 
;

// Rule PrimaryExpCS
rulePrimaryExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPrimaryExpCSAccess().getAlternatives()); }
(rule__PrimaryExpCS__Alternatives)
{ after(grammarAccess.getPrimaryExpCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNameExpCS
entryRuleNameExpCS 
:
{ before(grammarAccess.getNameExpCSRule()); }
	 ruleNameExpCS
{ after(grammarAccess.getNameExpCSRule()); } 
	 EOF 
;

// Rule NameExpCS
ruleNameExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNameExpCSAccess().getGroup()); }
(rule__NameExpCS__Group__0)
{ after(grammarAccess.getNameExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleCurlyBracketedClauseCS
entryRuleCurlyBracketedClauseCS 
:
{ before(grammarAccess.getCurlyBracketedClauseCSRule()); }
	 ruleCurlyBracketedClauseCS
{ after(grammarAccess.getCurlyBracketedClauseCSRule()); } 
	 EOF 
;

// Rule CurlyBracketedClauseCS
ruleCurlyBracketedClauseCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getGroup()); }
(rule__CurlyBracketedClauseCS__Group__0)
{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleRoundBracketedClauseCS
entryRuleRoundBracketedClauseCS 
:
{ before(grammarAccess.getRoundBracketedClauseCSRule()); }
	 ruleRoundBracketedClauseCS
{ after(grammarAccess.getRoundBracketedClauseCSRule()); } 
	 EOF 
;

// Rule RoundBracketedClauseCS
ruleRoundBracketedClauseCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getGroup()); }
(rule__RoundBracketedClauseCS__Group__0)
{ after(grammarAccess.getRoundBracketedClauseCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleSquareBracketedClauseCS
entryRuleSquareBracketedClauseCS 
:
{ before(grammarAccess.getSquareBracketedClauseCSRule()); }
	 ruleSquareBracketedClauseCS
{ after(grammarAccess.getSquareBracketedClauseCSRule()); } 
	 EOF 
;

// Rule SquareBracketedClauseCS
ruleSquareBracketedClauseCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getSquareBracketedClauseCSAccess().getGroup()); }
(rule__SquareBracketedClauseCS__Group__0)
{ after(grammarAccess.getSquareBracketedClauseCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNavigatingArgCS
entryRuleNavigatingArgCS 
:
{ before(grammarAccess.getNavigatingArgCSRule()); }
	 ruleNavigatingArgCS
{ after(grammarAccess.getNavigatingArgCSRule()); } 
	 EOF 
;

// Rule NavigatingArgCS
ruleNavigatingArgCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getAlternatives()); }
(rule__NavigatingArgCS__Alternatives)
{ after(grammarAccess.getNavigatingArgCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNavigatingBarArgCS
entryRuleNavigatingBarArgCS 
:
{ before(grammarAccess.getNavigatingBarArgCSRule()); }
	 ruleNavigatingBarArgCS
{ after(grammarAccess.getNavigatingBarArgCSRule()); } 
	 EOF 
;

// Rule NavigatingBarArgCS
ruleNavigatingBarArgCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getGroup()); }
(rule__NavigatingBarArgCS__Group__0)
{ after(grammarAccess.getNavigatingBarArgCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNavigatingCommaArgCS
entryRuleNavigatingCommaArgCS 
:
{ before(grammarAccess.getNavigatingCommaArgCSRule()); }
	 ruleNavigatingCommaArgCS
{ after(grammarAccess.getNavigatingCommaArgCSRule()); } 
	 EOF 
;

// Rule NavigatingCommaArgCS
ruleNavigatingCommaArgCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getGroup()); }
(rule__NavigatingCommaArgCS__Group__0)
{ after(grammarAccess.getNavigatingCommaArgCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNavigatingSemiArgCS
entryRuleNavigatingSemiArgCS 
:
{ before(grammarAccess.getNavigatingSemiArgCSRule()); }
	 ruleNavigatingSemiArgCS
{ after(grammarAccess.getNavigatingSemiArgCSRule()); } 
	 EOF 
;

// Rule NavigatingSemiArgCS
ruleNavigatingSemiArgCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getGroup()); }
(rule__NavigatingSemiArgCS__Group__0)
{ after(grammarAccess.getNavigatingSemiArgCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNavigatingArgExpCS
entryRuleNavigatingArgExpCS 
:
{ before(grammarAccess.getNavigatingArgExpCSRule()); }
	 ruleNavigatingArgExpCS
{ after(grammarAccess.getNavigatingArgExpCSRule()); } 
	 EOF 
;

// Rule NavigatingArgExpCS
ruleNavigatingArgExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNavigatingArgExpCSAccess().getExpCSParserRuleCall()); }
	ruleExpCS
{ after(grammarAccess.getNavigatingArgExpCSAccess().getExpCSParserRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleIfExpCS
entryRuleIfExpCS 
:
{ before(grammarAccess.getIfExpCSRule()); }
	 ruleIfExpCS
{ after(grammarAccess.getIfExpCSRule()); } 
	 EOF 
;

// Rule IfExpCS
ruleIfExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getIfExpCSAccess().getGroup()); }
(rule__IfExpCS__Group__0)
{ after(grammarAccess.getIfExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleElseIfThenExpCS
entryRuleElseIfThenExpCS 
:
{ before(grammarAccess.getElseIfThenExpCSRule()); }
	 ruleElseIfThenExpCS
{ after(grammarAccess.getElseIfThenExpCSRule()); } 
	 EOF 
;

// Rule ElseIfThenExpCS
ruleElseIfThenExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getElseIfThenExpCSAccess().getGroup()); }
(rule__ElseIfThenExpCS__Group__0)
{ after(grammarAccess.getElseIfThenExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleLetExpCS
entryRuleLetExpCS 
:
{ before(grammarAccess.getLetExpCSRule()); }
	 ruleLetExpCS
{ after(grammarAccess.getLetExpCSRule()); } 
	 EOF 
;

// Rule LetExpCS
ruleLetExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getLetExpCSAccess().getGroup()); }
(rule__LetExpCS__Group__0)
{ after(grammarAccess.getLetExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleLetVariableCS
entryRuleLetVariableCS 
:
{ before(grammarAccess.getLetVariableCSRule()); }
	 ruleLetVariableCS
{ after(grammarAccess.getLetVariableCSRule()); } 
	 EOF 
;

// Rule LetVariableCS
ruleLetVariableCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getLetVariableCSAccess().getGroup()); }
(rule__LetVariableCS__Group__0)
{ after(grammarAccess.getLetVariableCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNestedExpCS
entryRuleNestedExpCS 
:
{ before(grammarAccess.getNestedExpCSRule()); }
	 ruleNestedExpCS
{ after(grammarAccess.getNestedExpCSRule()); } 
	 EOF 
;

// Rule NestedExpCS
ruleNestedExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNestedExpCSAccess().getGroup()); }
(rule__NestedExpCS__Group__0)
{ after(grammarAccess.getNestedExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleSelfExpCS
entryRuleSelfExpCS 
:
{ before(grammarAccess.getSelfExpCSRule()); }
	 ruleSelfExpCS
{ after(grammarAccess.getSelfExpCSRule()); } 
	 EOF 
;

// Rule SelfExpCS
ruleSelfExpCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getSelfExpCSAccess().getGroup()); }
(rule__SelfExpCS__Group__0)
{ after(grammarAccess.getSelfExpCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMultiplicityBoundsCS
entryRuleMultiplicityBoundsCS 
:
{ before(grammarAccess.getMultiplicityBoundsCSRule()); }
	 ruleMultiplicityBoundsCS
{ after(grammarAccess.getMultiplicityBoundsCSRule()); } 
	 EOF 
;

// Rule MultiplicityBoundsCS
ruleMultiplicityBoundsCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMultiplicityBoundsCSAccess().getGroup()); }
(rule__MultiplicityBoundsCS__Group__0)
{ after(grammarAccess.getMultiplicityBoundsCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMultiplicityCS
entryRuleMultiplicityCS 
:
{ before(grammarAccess.getMultiplicityCSRule()); }
	 ruleMultiplicityCS
{ after(grammarAccess.getMultiplicityCSRule()); } 
	 EOF 
;

// Rule MultiplicityCS
ruleMultiplicityCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMultiplicityCSAccess().getGroup()); }
(rule__MultiplicityCS__Group__0)
{ after(grammarAccess.getMultiplicityCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleMultiplicityStringCS
entryRuleMultiplicityStringCS 
:
{ before(grammarAccess.getMultiplicityStringCSRule()); }
	 ruleMultiplicityStringCS
{ after(grammarAccess.getMultiplicityStringCSRule()); } 
	 EOF 
;

// Rule MultiplicityStringCS
ruleMultiplicityStringCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsAssignment()); }
(rule__MultiplicityStringCS__StringBoundsAssignment)
{ after(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePathNameCS
entryRulePathNameCS 
:
{ before(grammarAccess.getPathNameCSRule()); }
	 rulePathNameCS
{ after(grammarAccess.getPathNameCSRule()); } 
	 EOF 
;

// Rule PathNameCS
rulePathNameCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPathNameCSAccess().getGroup()); }
(rule__PathNameCS__Group__0)
{ after(grammarAccess.getPathNameCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleFirstPathElementCS
entryRuleFirstPathElementCS 
:
{ before(grammarAccess.getFirstPathElementCSRule()); }
	 ruleFirstPathElementCS
{ after(grammarAccess.getFirstPathElementCSRule()); } 
	 EOF 
;

// Rule FirstPathElementCS
ruleFirstPathElementCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getFirstPathElementCSAccess().getReferredElementAssignment()); }
(rule__FirstPathElementCS__ReferredElementAssignment)
{ after(grammarAccess.getFirstPathElementCSAccess().getReferredElementAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNextPathElementCS
entryRuleNextPathElementCS 
:
{ before(grammarAccess.getNextPathElementCSRule()); }
	 ruleNextPathElementCS
{ after(grammarAccess.getNextPathElementCSRule()); } 
	 EOF 
;

// Rule NextPathElementCS
ruleNextPathElementCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNextPathElementCSAccess().getReferredElementAssignment()); }
(rule__NextPathElementCS__ReferredElementAssignment)
{ after(grammarAccess.getNextPathElementCSAccess().getReferredElementAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTemplateBindingCS
entryRuleTemplateBindingCS 
:
{ before(grammarAccess.getTemplateBindingCSRule()); }
	 ruleTemplateBindingCS
{ after(grammarAccess.getTemplateBindingCSRule()); } 
	 EOF 
;

// Rule TemplateBindingCS
ruleTemplateBindingCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTemplateBindingCSAccess().getGroup()); }
(rule__TemplateBindingCS__Group__0)
{ after(grammarAccess.getTemplateBindingCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTemplateParameterSubstitutionCS
entryRuleTemplateParameterSubstitutionCS 
:
{ before(grammarAccess.getTemplateParameterSubstitutionCSRule()); }
	 ruleTemplateParameterSubstitutionCS
{ after(grammarAccess.getTemplateParameterSubstitutionCSRule()); } 
	 EOF 
;

// Rule TemplateParameterSubstitutionCS
ruleTemplateParameterSubstitutionCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTemplateParameterSubstitutionCSAccess().getOwnedActualParameterAssignment()); }
(rule__TemplateParameterSubstitutionCS__OwnedActualParameterAssignment)
{ after(grammarAccess.getTemplateParameterSubstitutionCSAccess().getOwnedActualParameterAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}





// Entry rule entryRuleTypeParameterCS
entryRuleTypeParameterCS 
:
{ before(grammarAccess.getTypeParameterCSRule()); }
	 ruleTypeParameterCS
{ after(grammarAccess.getTypeParameterCSRule()); } 
	 EOF 
;

// Rule TypeParameterCS
ruleTypeParameterCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTypeParameterCSAccess().getGroup()); }
(rule__TypeParameterCS__Group__0)
{ after(grammarAccess.getTypeParameterCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTypeRefCS
entryRuleTypeRefCS 
:
{ before(grammarAccess.getTypeRefCSRule()); }
	 ruleTypeRefCS
{ after(grammarAccess.getTypeRefCSRule()); } 
	 EOF 
;

// Rule TypeRefCS
ruleTypeRefCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTypeRefCSAccess().getAlternatives()); }
(rule__TypeRefCS__Alternatives)
{ after(grammarAccess.getTypeRefCSAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTypedRefCS
entryRuleTypedRefCS 
:
{ before(grammarAccess.getTypedRefCSRule()); }
	 ruleTypedRefCS
{ after(grammarAccess.getTypedRefCSRule()); } 
	 EOF 
;

// Rule TypedRefCS
ruleTypedRefCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTypedRefCSAccess().getTypedTypeRefCSParserRuleCall()); }
	ruleTypedTypeRefCS
{ after(grammarAccess.getTypedRefCSAccess().getTypedTypeRefCSParserRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTypedTypeRefCS
entryRuleTypedTypeRefCS 
:
{ before(grammarAccess.getTypedTypeRefCSRule()); }
	 ruleTypedTypeRefCS
{ after(grammarAccess.getTypedTypeRefCSRule()); } 
	 EOF 
;

// Rule TypedTypeRefCS
ruleTypedTypeRefCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTypedTypeRefCSAccess().getGroup()); }
(rule__TypedTypeRefCS__Group__0)
{ after(grammarAccess.getTypedTypeRefCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleWildcardTypeRefCS
entryRuleWildcardTypeRefCS 
:
{ before(grammarAccess.getWildcardTypeRefCSRule()); }
	 ruleWildcardTypeRefCS
{ after(grammarAccess.getWildcardTypeRefCSRule()); } 
	 EOF 
;

// Rule WildcardTypeRefCS
ruleWildcardTypeRefCS
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getWildcardTypeRefCSAccess().getGroup()); }
(rule__WildcardTypeRefCS__Group__0)
{ after(grammarAccess.getWildcardTypeRefCSAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleID
entryRuleID 
:
{ before(grammarAccess.getIDRule()); }
	 ruleID
{ after(grammarAccess.getIDRule()); } 
	 EOF 
;

// Rule ID
ruleID
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getIDAccess().getAlternatives()); }
(rule__ID__Alternatives)
{ after(grammarAccess.getIDAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleIdentifier
entryRuleIdentifier 
:
{ before(grammarAccess.getIdentifierRule()); }
	 ruleIdentifier
{ after(grammarAccess.getIdentifierRule()); } 
	 EOF 
;

// Rule Identifier
ruleIdentifier
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getIdentifierAccess().getIDParserRuleCall()); }
	ruleID
{ after(grammarAccess.getIdentifierAccess().getIDParserRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleLOWER
entryRuleLOWER 
:
{ before(grammarAccess.getLOWERRule()); }
	 ruleLOWER
{ after(grammarAccess.getLOWERRule()); } 
	 EOF 
;

// Rule LOWER
ruleLOWER
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getLOWERAccess().getINTTerminalRuleCall()); }
	RULE_INT
{ after(grammarAccess.getLOWERAccess().getINTTerminalRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNUMBER_LITERAL
entryRuleNUMBER_LITERAL 
:
{ before(grammarAccess.getNUMBER_LITERALRule()); }
	 ruleNUMBER_LITERAL
{ after(grammarAccess.getNUMBER_LITERALRule()); } 
	 EOF 
;

// Rule NUMBER_LITERAL
ruleNUMBER_LITERAL
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNUMBER_LITERALAccess().getINTTerminalRuleCall()); }
	RULE_INT
{ after(grammarAccess.getNUMBER_LITERALAccess().getINTTerminalRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleStringLiteral
entryRuleStringLiteral 
:
{ before(grammarAccess.getStringLiteralRule()); }
	 ruleStringLiteral
{ after(grammarAccess.getStringLiteralRule()); } 
	 EOF 
;

// Rule StringLiteral
ruleStringLiteral
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getStringLiteralAccess().getSINGLE_QUOTED_STRINGTerminalRuleCall()); }
	RULE_SINGLE_QUOTED_STRING
{ after(grammarAccess.getStringLiteralAccess().getSINGLE_QUOTED_STRINGTerminalRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleUPPER
entryRuleUPPER 
:
{ before(grammarAccess.getUPPERRule()); }
	 ruleUPPER
{ after(grammarAccess.getUPPERRule()); } 
	 EOF 
;

// Rule UPPER
ruleUPPER
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getUPPERAccess().getAlternatives()); }
(rule__UPPER__Alternatives)
{ after(grammarAccess.getUPPERAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleURI
entryRuleURI 
:
{ before(grammarAccess.getURIRule()); }
	 ruleURI
{ after(grammarAccess.getURIRule()); } 
	 EOF 
;

// Rule URI
ruleURI
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getURIAccess().getSINGLE_QUOTED_STRINGTerminalRuleCall()); }
	RULE_SINGLE_QUOTED_STRING
{ after(grammarAccess.getURIAccess().getSINGLE_QUOTED_STRINGTerminalRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__TopLevelCS__Alternatives_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTopLevelCSAccess().getOwnedTransformationsAssignment_1_0()); }
(rule__TopLevelCS__OwnedTransformationsAssignment_1_0)
{ after(grammarAccess.getTopLevelCSAccess().getOwnedTransformationsAssignment_1_0()); }
)

    |(
{ before(grammarAccess.getTopLevelCSAccess().getOwnedMappingsAssignment_1_1()); }
(rule__TopLevelCS__OwnedMappingsAssignment_1_1)
{ after(grammarAccess.getTopLevelCSAccess().getOwnedMappingsAssignment_1_1()); }
)

    |(
{ before(grammarAccess.getTopLevelCSAccess().getOwnedQueriesAssignment_1_2()); }
(rule__TopLevelCS__OwnedQueriesAssignment_1_2)
{ after(grammarAccess.getTopLevelCSAccess().getOwnedQueriesAssignment_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__OwnedDomainsAlternatives_7_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedDomainsSourceDomainCSParserRuleCall_7_0_0()); }
	ruleSourceDomainCS
{ after(grammarAccess.getMappingCSAccess().getOwnedDomainsSourceDomainCSParserRuleCall_7_0_0()); }
)

    |(
{ before(grammarAccess.getMappingCSAccess().getOwnedDomainsTargetDomainCSParserRuleCall_7_0_1()); }
	ruleTargetDomainCS
{ after(grammarAccess.getMappingCSAccess().getOwnedDomainsTargetDomainCSParserRuleCall_7_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallBindingCS__Alternatives_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallBindingCSAccess().getColonEqualsSignKeyword_1_0()); }

	':=' 

{ after(grammarAccess.getMappingCallBindingCSAccess().getColonEqualsSignKeyword_1_0()); }
)

    |(
{ before(grammarAccess.getMappingCallBindingCSAccess().getIsPolledAssignment_1_1()); }
(rule__MappingCallBindingCS__IsPolledAssignment_1_1)
{ after(grammarAccess.getMappingCallBindingCSAccess().getIsPolledAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingStatementCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingStatementCSAccess().getMappingCallCSParserRuleCall_0()); }
	ruleMappingCallCS
{ after(grammarAccess.getMappingStatementCSAccess().getMappingCallCSParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getMappingStatementCSAccess().getMappingLoopCSParserRuleCall_1()); }
	ruleMappingLoopCS
{ after(grammarAccess.getMappingStatementCSAccess().getMappingLoopCSParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ImperativePredicateOrAssignmentCS__Alternatives_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getColonEqualsSignKeyword_2_0_0()); }

	':=' 

{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getColonEqualsSignKeyword_2_0_0()); }
)

    |(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsAccumulateAssignment_2_0_1()); }
(rule__ImperativePredicateOrAssignmentCS__IsAccumulateAssignment_2_0_1)
{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsAccumulateAssignment_2_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_0()); }
(rule__MiddleBottomPatternCS__Group_0__0)
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_0()); }
)

    |(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_1()); }
(rule__MiddleBottomPatternCS__Group_1__0)
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_1()); }
)

    |(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_2()); }
(rule__MiddleBottomPatternCS__Group_2__0)
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_2()); }
)

    |(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_3()); }
(rule__MiddleBottomPatternCS__Group_3__0)
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__Alternatives_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_2_0_0()); }
(rule__TargetBottomPatternCS__OwnedRealizedVariablesAssignment_2_0_0)
{ after(grammarAccess.getTargetBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_2_0_0()); }
)

    |(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_0_1()); }
(rule__TargetBottomPatternCS__OwnedUnrealizedVariablesAssignment_2_0_1)
{ after(grammarAccess.getTargetBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__Alternatives_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_2_1_1_0()); }
(rule__TargetBottomPatternCS__OwnedRealizedVariablesAssignment_2_1_1_0)
{ after(grammarAccess.getTargetBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_2_1_1_0()); }
)

    |(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_1_1_1()); }
(rule__TargetBottomPatternCS__OwnedUnrealizedVariablesAssignment_2_1_1_1)
{ after(grammarAccess.getTargetBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_1_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getGroup_0()); }
(rule__BottomPatternCS__Group_0__0)
{ after(grammarAccess.getBottomPatternCSAccess().getGroup_0()); }
)

    |(
{ before(grammarAccess.getBottomPatternCSAccess().getGroup_1()); }
(rule__BottomPatternCS__Group_1__0)
{ after(grammarAccess.getBottomPatternCSAccess().getGroup_1()); }
)

    |(
{ before(grammarAccess.getBottomPatternCSAccess().getGroup_2()); }
(rule__BottomPatternCS__Group_2__0)
{ after(grammarAccess.getBottomPatternCSAccess().getGroup_2()); }
)

    |(
{ before(grammarAccess.getBottomPatternCSAccess().getGroup_3()); }
(rule__BottomPatternCS__Group_3__0)
{ after(grammarAccess.getBottomPatternCSAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Alternatives_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_1_0()); }
(rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_0_1_0)
{ after(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_1_0()); }
)

    |(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_0_1_1()); }
(rule__BottomPatternCS__OwnedRealizedVariablesAssignment_0_1_1)
{ after(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_0_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Alternatives_0_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_2_1_0()); }
(rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_0_2_1_0)
{ after(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_2_1_0()); }
)

    |(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_0_2_1_1()); }
(rule__BottomPatternCS__OwnedRealizedVariablesAssignment_0_2_1_1)
{ after(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_0_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Alternatives_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_1_0()); }
(rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_1_1_0)
{ after(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_1_0()); }
)

    |(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_1_1_1()); }
(rule__BottomPatternCS__OwnedRealizedVariablesAssignment_1_1_1)
{ after(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_1_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Alternatives_1_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_2_1_0()); }
(rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_1_2_1_0)
{ after(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_2_1_0()); }
)

    |(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_1_2_1_1()); }
(rule__BottomPatternCS__OwnedRealizedVariablesAssignment_1_2_1_1)
{ after(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesAssignment_1_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getGroup_0()); }
(rule__GuardPatternCS__Group_0__0)
{ after(grammarAccess.getGuardPatternCSAccess().getGroup_0()); }
)

    |(
{ before(grammarAccess.getGuardPatternCSAccess().getGroup_1()); }
(rule__GuardPatternCS__Group_1__0)
{ after(grammarAccess.getGuardPatternCSAccess().getGroup_1()); }
)

    |(
{ before(grammarAccess.getGuardPatternCSAccess().getGroup_2()); }
(rule__GuardPatternCS__Group_2__0)
{ after(grammarAccess.getGuardPatternCSAccess().getGroup_2()); }
)

    |(
{ before(grammarAccess.getGuardPatternCSAccess().getGroup_3()); }
(rule__GuardPatternCS__Group_3__0)
{ after(grammarAccess.getGuardPatternCSAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Alternatives_8
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getSemicolonKeyword_8_0()); }

	';' 

{ after(grammarAccess.getQueryCSAccess().getSemicolonKeyword_8_0()); }
)

    |(
{ before(grammarAccess.getQueryCSAccess().getGroup_8_1()); }
(rule__QueryCS__Group_8_1__0)
{ after(grammarAccess.getQueryCSAccess().getGroup_8_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__UnrestrictedName__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnrestrictedNameAccess().getEssentialOCLUnrestrictedNameParserRuleCall_0()); }
	ruleEssentialOCLUnrestrictedName
{ after(grammarAccess.getUnrestrictedNameAccess().getEssentialOCLUnrestrictedNameParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getUnrestrictedNameAccess().getCheckKeyword_1()); }

	'check' 

{ after(grammarAccess.getUnrestrictedNameAccess().getCheckKeyword_1()); }
)

    |(
{ before(grammarAccess.getUnrestrictedNameAccess().getEnforceKeyword_2()); }

	'enforce' 

{ after(grammarAccess.getUnrestrictedNameAccess().getEnforceKeyword_2()); }
)

    |(
{ before(grammarAccess.getUnrestrictedNameAccess().getImportKeyword_3()); }

	'import' 

{ after(grammarAccess.getUnrestrictedNameAccess().getImportKeyword_3()); }
)

    |(
{ before(grammarAccess.getUnrestrictedNameAccess().getImportsKeyword_4()); }

	'imports' 

{ after(grammarAccess.getUnrestrictedNameAccess().getImportsKeyword_4()); }
)

    |(
{ before(grammarAccess.getUnrestrictedNameAccess().getLibraryKeyword_5()); }

	'library' 

{ after(grammarAccess.getUnrestrictedNameAccess().getLibraryKeyword_5()); }
)

    |(
{ before(grammarAccess.getUnrestrictedNameAccess().getMapKeyword_6()); }

	'map' 

{ after(grammarAccess.getUnrestrictedNameAccess().getMapKeyword_6()); }
)

    |(
{ before(grammarAccess.getUnrestrictedNameAccess().getQueryKeyword_7()); }

	'query' 

{ after(grammarAccess.getUnrestrictedNameAccess().getQueryKeyword_7()); }
)

    |(
{ before(grammarAccess.getUnrestrictedNameAccess().getRealizeKeyword_8()); }

	'realize' 

{ after(grammarAccess.getUnrestrictedNameAccess().getRealizeKeyword_8()); }
)

    |(
{ before(grammarAccess.getUnrestrictedNameAccess().getRefinesKeyword_9()); }

	'refines' 

{ after(grammarAccess.getUnrestrictedNameAccess().getRefinesKeyword_9()); }
)

    |(
{ before(grammarAccess.getUnrestrictedNameAccess().getTransformationKeyword_10()); }

	'transformation' 

{ after(grammarAccess.getUnrestrictedNameAccess().getTransformationKeyword_10()); }
)

    |(
{ before(grammarAccess.getUnrestrictedNameAccess().getUsesKeyword_11()); }

	'uses' 

{ after(grammarAccess.getUnrestrictedNameAccess().getUsesKeyword_11()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__EssentialOCLUnaryOperatorName__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEssentialOCLUnaryOperatorNameAccess().getHyphenMinusKeyword_0()); }

	'-' 

{ after(grammarAccess.getEssentialOCLUnaryOperatorNameAccess().getHyphenMinusKeyword_0()); }
)

    |(
{ before(grammarAccess.getEssentialOCLUnaryOperatorNameAccess().getNotKeyword_1()); }

	'not' 

{ after(grammarAccess.getEssentialOCLUnaryOperatorNameAccess().getNotKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__EssentialOCLInfixOperatorName__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getAsteriskKeyword_0()); }

	'*' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getAsteriskKeyword_0()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getSolidusKeyword_1()); }

	'/' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getSolidusKeyword_1()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getPlusSignKeyword_2()); }

	'+' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getPlusSignKeyword_2()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getHyphenMinusKeyword_3()); }

	'-' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getHyphenMinusKeyword_3()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getGreaterThanSignKeyword_4()); }

	'>' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getGreaterThanSignKeyword_4()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getLessThanSignKeyword_5()); }

	'<' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getLessThanSignKeyword_5()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getGreaterThanSignEqualsSignKeyword_6()); }

	'>=' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getGreaterThanSignEqualsSignKeyword_6()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getLessThanSignEqualsSignKeyword_7()); }

	'<=' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getLessThanSignEqualsSignKeyword_7()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getEqualsSignKeyword_8()); }

	'=' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getEqualsSignKeyword_8()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getLessThanSignGreaterThanSignKeyword_9()); }

	'<>' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getLessThanSignGreaterThanSignKeyword_9()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getAndKeyword_10()); }

	'and' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getAndKeyword_10()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getOrKeyword_11()); }

	'or' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getOrKeyword_11()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getXorKeyword_12()); }

	'xor' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getXorKeyword_12()); }
)

    |(
{ before(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getImpliesKeyword_13()); }

	'implies' 

{ after(grammarAccess.getEssentialOCLInfixOperatorNameAccess().getImpliesKeyword_13()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__EssentialOCLNavigationOperatorName__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEssentialOCLNavigationOperatorNameAccess().getFullStopKeyword_0()); }

	'.' 

{ after(grammarAccess.getEssentialOCLNavigationOperatorNameAccess().getFullStopKeyword_0()); }
)

    |(
{ before(grammarAccess.getEssentialOCLNavigationOperatorNameAccess().getHyphenMinusGreaterThanSignKeyword_1()); }

	'->' 

{ after(grammarAccess.getEssentialOCLNavigationOperatorNameAccess().getHyphenMinusGreaterThanSignKeyword_1()); }
)

    |(
{ before(grammarAccess.getEssentialOCLNavigationOperatorNameAccess().getQuestionMarkFullStopKeyword_2()); }

	'?.' 

{ after(grammarAccess.getEssentialOCLNavigationOperatorNameAccess().getQuestionMarkFullStopKeyword_2()); }
)

    |(
{ before(grammarAccess.getEssentialOCLNavigationOperatorNameAccess().getQuestionMarkHyphenMinusGreaterThanSignKeyword_3()); }

	'?->' 

{ after(grammarAccess.getEssentialOCLNavigationOperatorNameAccess().getQuestionMarkHyphenMinusGreaterThanSignKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BinaryOperatorName__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBinaryOperatorNameAccess().getInfixOperatorNameParserRuleCall_0()); }
	ruleInfixOperatorName
{ after(grammarAccess.getBinaryOperatorNameAccess().getInfixOperatorNameParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getBinaryOperatorNameAccess().getNavigationOperatorNameParserRuleCall_1()); }
	ruleNavigationOperatorName
{ after(grammarAccess.getBinaryOperatorNameAccess().getNavigationOperatorNameParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__EssentialOCLUnreservedName__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEssentialOCLUnreservedNameAccess().getUnrestrictedNameParserRuleCall_0()); }
	ruleUnrestrictedName
{ after(grammarAccess.getEssentialOCLUnreservedNameAccess().getUnrestrictedNameParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getEssentialOCLUnreservedNameAccess().getCollectionTypeIdentifierParserRuleCall_1()); }
	ruleCollectionTypeIdentifier
{ after(grammarAccess.getEssentialOCLUnreservedNameAccess().getCollectionTypeIdentifierParserRuleCall_1()); }
)

    |(
{ before(grammarAccess.getEssentialOCLUnreservedNameAccess().getPrimitiveTypeIdentifierParserRuleCall_2()); }
	rulePrimitiveTypeIdentifier
{ after(grammarAccess.getEssentialOCLUnreservedNameAccess().getPrimitiveTypeIdentifierParserRuleCall_2()); }
)

    |(
{ before(grammarAccess.getEssentialOCLUnreservedNameAccess().getMapKeyword_3()); }

	'Map' 

{ after(grammarAccess.getEssentialOCLUnreservedNameAccess().getMapKeyword_3()); }
)

    |(
{ before(grammarAccess.getEssentialOCLUnreservedNameAccess().getTupleKeyword_4()); }

	'Tuple' 

{ after(grammarAccess.getEssentialOCLUnreservedNameAccess().getTupleKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__URIFirstPathElementCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementAssignment_0()); }
(rule__URIFirstPathElementCS__ReferredElementAssignment_0)
{ after(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementAssignment_0()); }
)

    |(
{ before(grammarAccess.getURIFirstPathElementCSAccess().getGroup_1()); }
(rule__URIFirstPathElementCS__Group_1__0)
{ after(grammarAccess.getURIFirstPathElementCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrimitiveTypeIdentifier__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getBooleanKeyword_0()); }

	'Boolean' 

{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getBooleanKeyword_0()); }
)

    |(
{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getIntegerKeyword_1()); }

	'Integer' 

{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getIntegerKeyword_1()); }
)

    |(
{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getRealKeyword_2()); }

	'Real' 

{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getRealKeyword_2()); }
)

    |(
{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getStringKeyword_3()); }

	'String' 

{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getStringKeyword_3()); }
)

    |(
{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getUnlimitedNaturalKeyword_4()); }

	'UnlimitedNatural' 

{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getUnlimitedNaturalKeyword_4()); }
)

    |(
{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclAnyKeyword_5()); }

	'OclAny' 

{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclAnyKeyword_5()); }
)

    |(
{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclInvalidKeyword_6()); }

	'OclInvalid' 

{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclInvalidKeyword_6()); }
)

    |(
{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclVoidKeyword_7()); }

	'OclVoid' 

{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclVoidKeyword_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionTypeIdentifier__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionTypeIdentifierAccess().getSetKeyword_0()); }

	'Set' 

{ after(grammarAccess.getCollectionTypeIdentifierAccess().getSetKeyword_0()); }
)

    |(
{ before(grammarAccess.getCollectionTypeIdentifierAccess().getBagKeyword_1()); }

	'Bag' 

{ after(grammarAccess.getCollectionTypeIdentifierAccess().getBagKeyword_1()); }
)

    |(
{ before(grammarAccess.getCollectionTypeIdentifierAccess().getSequenceKeyword_2()); }

	'Sequence' 

{ after(grammarAccess.getCollectionTypeIdentifierAccess().getSequenceKeyword_2()); }
)

    |(
{ before(grammarAccess.getCollectionTypeIdentifierAccess().getCollectionKeyword_3()); }

	'Collection' 

{ after(grammarAccess.getCollectionTypeIdentifierAccess().getCollectionKeyword_3()); }
)

    |(
{ before(grammarAccess.getCollectionTypeIdentifierAccess().getOrderedSetKeyword_4()); }

	'OrderedSet' 

{ after(grammarAccess.getCollectionTypeIdentifierAccess().getOrderedSetKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPartCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralPartCSAccess().getGroup_0()); }
(rule__CollectionLiteralPartCS__Group_0__0)
{ after(grammarAccess.getCollectionLiteralPartCSAccess().getGroup_0()); }
)

    |(
{ before(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedExpressionAssignment_1()); }
(rule__CollectionLiteralPartCS__OwnedExpressionAssignment_1)
{ after(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedExpressionAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ShadowPartCS__OwnedInitExpressionAlternatives_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShadowPartCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_0_0()); }
	ruleExpCS
{ after(grammarAccess.getShadowPartCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_0_0()); }
)

    |(
{ before(grammarAccess.getShadowPartCSAccess().getOwnedInitExpressionPatternExpCSParserRuleCall_2_0_1()); }
	rulePatternExpCS
{ after(grammarAccess.getShadowPartCSAccess().getOwnedInitExpressionPatternExpCSParserRuleCall_2_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrimitiveLiteralExpCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrimitiveLiteralExpCSAccess().getNumberLiteralExpCSParserRuleCall_0()); }
	ruleNumberLiteralExpCS
{ after(grammarAccess.getPrimitiveLiteralExpCSAccess().getNumberLiteralExpCSParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getPrimitiveLiteralExpCSAccess().getStringLiteralExpCSParserRuleCall_1()); }
	ruleStringLiteralExpCS
{ after(grammarAccess.getPrimitiveLiteralExpCSAccess().getStringLiteralExpCSParserRuleCall_1()); }
)

    |(
{ before(grammarAccess.getPrimitiveLiteralExpCSAccess().getBooleanLiteralExpCSParserRuleCall_2()); }
	ruleBooleanLiteralExpCS
{ after(grammarAccess.getPrimitiveLiteralExpCSAccess().getBooleanLiteralExpCSParserRuleCall_2()); }
)

    |(
{ before(grammarAccess.getPrimitiveLiteralExpCSAccess().getUnlimitedNaturalLiteralExpCSParserRuleCall_3()); }
	ruleUnlimitedNaturalLiteralExpCS
{ after(grammarAccess.getPrimitiveLiteralExpCSAccess().getUnlimitedNaturalLiteralExpCSParserRuleCall_3()); }
)

    |(
{ before(grammarAccess.getPrimitiveLiteralExpCSAccess().getInvalidLiteralExpCSParserRuleCall_4()); }
	ruleInvalidLiteralExpCS
{ after(grammarAccess.getPrimitiveLiteralExpCSAccess().getInvalidLiteralExpCSParserRuleCall_4()); }
)

    |(
{ before(grammarAccess.getPrimitiveLiteralExpCSAccess().getNullLiteralExpCSParserRuleCall_5()); }
	ruleNullLiteralExpCS
{ after(grammarAccess.getPrimitiveLiteralExpCSAccess().getNullLiteralExpCSParserRuleCall_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanLiteralExpCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolAssignment_0()); }
(rule__BooleanLiteralExpCS__SymbolAssignment_0)
{ after(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolAssignment_0()); }
)

    |(
{ before(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolAssignment_1()); }
(rule__BooleanLiteralExpCS__SymbolAssignment_1)
{ after(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeLiteralCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeLiteralCSAccess().getPrimitiveTypeCSParserRuleCall_0()); }
	rulePrimitiveTypeCS
{ after(grammarAccess.getTypeLiteralCSAccess().getPrimitiveTypeCSParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getTypeLiteralCSAccess().getCollectionTypeCSParserRuleCall_1()); }
	ruleCollectionTypeCS
{ after(grammarAccess.getTypeLiteralCSAccess().getCollectionTypeCSParserRuleCall_1()); }
)

    |(
{ before(grammarAccess.getTypeLiteralCSAccess().getMapTypeCSParserRuleCall_2()); }
	ruleMapTypeCS
{ after(grammarAccess.getTypeLiteralCSAccess().getMapTypeCSParserRuleCall_2()); }
)

    |(
{ before(grammarAccess.getTypeLiteralCSAccess().getTupleTypeCSParserRuleCall_3()); }
	ruleTupleTypeCS
{ after(grammarAccess.getTypeLiteralCSAccess().getTupleTypeCSParserRuleCall_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeExpCS__Alternatives_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeExpCSAccess().getTypeNameExpCSParserRuleCall_0_0()); }
	ruleTypeNameExpCS
{ after(grammarAccess.getTypeExpCSAccess().getTypeNameExpCSParserRuleCall_0_0()); }
)

    |(
{ before(grammarAccess.getTypeExpCSAccess().getTypeLiteralCSParserRuleCall_0_1()); }
	ruleTypeLiteralCS
{ after(grammarAccess.getTypeExpCSAccess().getTypeLiteralCSParserRuleCall_0_1()); }
)

    |(
{ before(grammarAccess.getTypeExpCSAccess().getCollectionPatternCSParserRuleCall_0_2()); }
	ruleCollectionPatternCS
{ after(grammarAccess.getTypeExpCSAccess().getCollectionPatternCSParserRuleCall_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ExpCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExpCSAccess().getGroup_0()); }
(rule__ExpCS__Group_0__0)
{ after(grammarAccess.getExpCSAccess().getGroup_0()); }
)

    |(
{ before(grammarAccess.getExpCSAccess().getPrefixedLetExpCSParserRuleCall_1()); }
	rulePrefixedLetExpCS
{ after(grammarAccess.getExpCSAccess().getPrefixedLetExpCSParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedLetExpCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedLetExpCSAccess().getGroup_0()); }
(rule__PrefixedLetExpCS__Group_0__0)
{ after(grammarAccess.getPrefixedLetExpCSAccess().getGroup_0()); }
)

    |(
{ before(grammarAccess.getPrefixedLetExpCSAccess().getLetExpCSParserRuleCall_1()); }
	ruleLetExpCS
{ after(grammarAccess.getPrefixedLetExpCSAccess().getLetExpCSParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedPrimaryExpCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedPrimaryExpCSAccess().getGroup_0()); }
(rule__PrefixedPrimaryExpCS__Group_0__0)
{ after(grammarAccess.getPrefixedPrimaryExpCSAccess().getGroup_0()); }
)

    |(
{ before(grammarAccess.getPrefixedPrimaryExpCSAccess().getPrimaryExpCSParserRuleCall_1()); }
	rulePrimaryExpCS
{ after(grammarAccess.getPrefixedPrimaryExpCSAccess().getPrimaryExpCSParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrimaryExpCSAccess().getNestedExpCSParserRuleCall_0()); }
	ruleNestedExpCS
{ after(grammarAccess.getPrimaryExpCSAccess().getNestedExpCSParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getPrimaryExpCSAccess().getIfExpCSParserRuleCall_1()); }
	ruleIfExpCS
{ after(grammarAccess.getPrimaryExpCSAccess().getIfExpCSParserRuleCall_1()); }
)

    |(
{ before(grammarAccess.getPrimaryExpCSAccess().getSelfExpCSParserRuleCall_2()); }
	ruleSelfExpCS
{ after(grammarAccess.getPrimaryExpCSAccess().getSelfExpCSParserRuleCall_2()); }
)

    |(
{ before(grammarAccess.getPrimaryExpCSAccess().getPrimitiveLiteralExpCSParserRuleCall_3()); }
	rulePrimitiveLiteralExpCS
{ after(grammarAccess.getPrimaryExpCSAccess().getPrimitiveLiteralExpCSParserRuleCall_3()); }
)

    |(
{ before(grammarAccess.getPrimaryExpCSAccess().getTupleLiteralExpCSParserRuleCall_4()); }
	ruleTupleLiteralExpCS
{ after(grammarAccess.getPrimaryExpCSAccess().getTupleLiteralExpCSParserRuleCall_4()); }
)

    |(
{ before(grammarAccess.getPrimaryExpCSAccess().getMapLiteralExpCSParserRuleCall_5()); }
	ruleMapLiteralExpCS
{ after(grammarAccess.getPrimaryExpCSAccess().getMapLiteralExpCSParserRuleCall_5()); }
)

    |(
{ before(grammarAccess.getPrimaryExpCSAccess().getCollectionLiteralExpCSParserRuleCall_6()); }
	ruleCollectionLiteralExpCS
{ after(grammarAccess.getPrimaryExpCSAccess().getCollectionLiteralExpCSParserRuleCall_6()); }
)

    |(
{ before(grammarAccess.getPrimaryExpCSAccess().getLambdaLiteralExpCSParserRuleCall_7()); }
	ruleLambdaLiteralExpCS
{ after(grammarAccess.getPrimaryExpCSAccess().getLambdaLiteralExpCSParserRuleCall_7()); }
)

    |(
{ before(grammarAccess.getPrimaryExpCSAccess().getTypeLiteralExpCSParserRuleCall_8()); }
	ruleTypeLiteralExpCS
{ after(grammarAccess.getPrimaryExpCSAccess().getTypeLiteralExpCSParserRuleCall_8()); }
)

    |(
{ before(grammarAccess.getPrimaryExpCSAccess().getNameExpCSParserRuleCall_9()); }
	ruleNameExpCS
{ after(grammarAccess.getPrimaryExpCSAccess().getNameExpCSParserRuleCall_9()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__Alternatives_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getGroup_2_0()); }
(rule__CurlyBracketedClauseCS__Group_2_0__0)?
{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getGroup_2_0()); }
)

    |(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getValueAssignment_2_1()); }
(rule__CurlyBracketedClauseCS__ValueAssignment_2_1)
{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getValueAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getGroup_0()); }
(rule__NavigatingArgCS__Group_0__0)
{ after(grammarAccess.getNavigatingArgCSAccess().getGroup_0()); }
)

    |(
{ before(grammarAccess.getNavigatingArgCSAccess().getGroup_1()); }
(rule__NavigatingArgCS__Group_1__0)
{ after(grammarAccess.getNavigatingArgCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Alternatives_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getGroup_0_1_0()); }
(rule__NavigatingArgCS__Group_0_1_0__0)
{ after(grammarAccess.getNavigatingArgCSAccess().getGroup_0_1_0()); }
)

    |(
{ before(grammarAccess.getNavigatingArgCSAccess().getGroup_0_1_1()); }
(rule__NavigatingArgCS__Group_0_1_1__0)
{ after(grammarAccess.getNavigatingArgCSAccess().getGroup_0_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__Alternatives_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getGroup_2_0()); }
(rule__NavigatingCommaArgCS__Group_2_0__0)
{ after(grammarAccess.getNavigatingCommaArgCSAccess().getGroup_2_0()); }
)

    |(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getGroup_2_1()); }
(rule__NavigatingCommaArgCS__Group_2_1__0)
{ after(grammarAccess.getNavigatingCommaArgCSAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__OwnedConditionAlternatives_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getOwnedConditionExpCSParserRuleCall_1_0_0()); }
	ruleExpCS
{ after(grammarAccess.getIfExpCSAccess().getOwnedConditionExpCSParserRuleCall_1_0_0()); }
)

    |(
{ before(grammarAccess.getIfExpCSAccess().getOwnedConditionPatternExpCSParserRuleCall_1_0_1()); }
	rulePatternExpCS
{ after(grammarAccess.getIfExpCSAccess().getOwnedConditionPatternExpCSParserRuleCall_1_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityCS__Alternatives_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityCSAccess().getMultiplicityBoundsCSParserRuleCall_1_0()); }
	ruleMultiplicityBoundsCS
{ after(grammarAccess.getMultiplicityCSAccess().getMultiplicityBoundsCSParserRuleCall_1_0()); }
)

    |(
{ before(grammarAccess.getMultiplicityCSAccess().getMultiplicityStringCSParserRuleCall_1_1()); }
	ruleMultiplicityStringCS
{ after(grammarAccess.getMultiplicityCSAccess().getMultiplicityStringCSParserRuleCall_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityCS__Alternatives_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityCSAccess().getVerticalLineQuestionMarkKeyword_2_0()); }

	'|?' 

{ after(grammarAccess.getMultiplicityCSAccess().getVerticalLineQuestionMarkKeyword_2_0()); }
)

    |(
{ before(grammarAccess.getMultiplicityCSAccess().getIsNullFreeAssignment_2_1()); }
(rule__MultiplicityCS__IsNullFreeAssignment_2_1)
{ after(grammarAccess.getMultiplicityCSAccess().getIsNullFreeAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityStringCS__StringBoundsAlternatives_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsAsteriskKeyword_0_0()); }

	'*' 

{ after(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsAsteriskKeyword_0_0()); }
)

    |(
{ before(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsPlusSignKeyword_0_1()); }

	'+' 

{ after(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsPlusSignKeyword_0_1()); }
)

    |(
{ before(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsQuestionMarkKeyword_0_2()); }

	'?' 

{ after(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsQuestionMarkKeyword_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeRefCS__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeRefCSAccess().getTypedRefCSParserRuleCall_0()); }
	ruleTypedRefCS
{ after(grammarAccess.getTypeRefCSAccess().getTypedRefCSParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getTypeRefCSAccess().getWildcardTypeRefCSParserRuleCall_1()); }
	ruleWildcardTypeRefCS
{ after(grammarAccess.getTypeRefCSAccess().getWildcardTypeRefCSParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ID__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIDAccess().getSIMPLE_IDTerminalRuleCall_0()); }
	RULE_SIMPLE_ID
{ after(grammarAccess.getIDAccess().getSIMPLE_IDTerminalRuleCall_0()); }
)

    |(
{ before(grammarAccess.getIDAccess().getESCAPED_IDTerminalRuleCall_1()); }
	RULE_ESCAPED_ID
{ after(grammarAccess.getIDAccess().getESCAPED_IDTerminalRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__UPPER__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUPPERAccess().getINTTerminalRuleCall_0()); }
	RULE_INT
{ after(grammarAccess.getUPPERAccess().getINTTerminalRuleCall_0()); }
)

    |(
{ before(grammarAccess.getUPPERAccess().getAsteriskKeyword_1()); }

	'*' 

{ after(grammarAccess.getUPPERAccess().getAsteriskKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__TopLevelCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TopLevelCS__Group__0__Impl
	rule__TopLevelCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TopLevelCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTopLevelCSAccess().getOwnedImportsAssignment_0()); }
(rule__TopLevelCS__OwnedImportsAssignment_0)*
{ after(grammarAccess.getTopLevelCSAccess().getOwnedImportsAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TopLevelCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TopLevelCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TopLevelCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTopLevelCSAccess().getAlternatives_1()); }
(rule__TopLevelCS__Alternatives_1)*
{ after(grammarAccess.getTopLevelCSAccess().getAlternatives_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DirectionCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group__0__Impl
	rule__DirectionCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getDirectionCSAction_0()); }
(

)
{ after(grammarAccess.getDirectionCSAccess().getDirectionCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DirectionCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group__1__Impl
	rule__DirectionCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getNameAssignment_1()); }
(rule__DirectionCS__NameAssignment_1)
{ after(grammarAccess.getDirectionCSAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DirectionCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group__2__Impl
	rule__DirectionCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getGroup_2()); }
(rule__DirectionCS__Group_2__0)?
{ after(grammarAccess.getDirectionCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DirectionCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getGroup_3()); }
(rule__DirectionCS__Group_3__0)?
{ after(grammarAccess.getDirectionCSAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__DirectionCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group_2__0__Impl
	rule__DirectionCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getImportsKeyword_2_0()); }

	'imports' 

{ after(grammarAccess.getDirectionCSAccess().getImportsKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DirectionCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group_2__1__Impl
	rule__DirectionCS__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getImportsAssignment_2_1()); }
(rule__DirectionCS__ImportsAssignment_2_1)
{ after(grammarAccess.getDirectionCSAccess().getImportsAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DirectionCS__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getGroup_2_2()); }
(rule__DirectionCS__Group_2_2__0)*
{ after(grammarAccess.getDirectionCSAccess().getGroup_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__DirectionCS__Group_2_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group_2_2__0__Impl
	rule__DirectionCS__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group_2_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getCommaKeyword_2_2_0()); }

	',' 

{ after(grammarAccess.getDirectionCSAccess().getCommaKeyword_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DirectionCS__Group_2_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group_2_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getImportsAssignment_2_2_1()); }
(rule__DirectionCS__ImportsAssignment_2_2_1)
{ after(grammarAccess.getDirectionCSAccess().getImportsAssignment_2_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__DirectionCS__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group_3__0__Impl
	rule__DirectionCS__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getUsesKeyword_3_0()); }

	'uses' 

{ after(grammarAccess.getDirectionCSAccess().getUsesKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DirectionCS__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group_3__1__Impl
	rule__DirectionCS__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getUsesAssignment_3_1()); }
(rule__DirectionCS__UsesAssignment_3_1)
{ after(grammarAccess.getDirectionCSAccess().getUsesAssignment_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DirectionCS__Group_3__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group_3__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getGroup_3_2()); }
(rule__DirectionCS__Group_3_2__0)*
{ after(grammarAccess.getDirectionCSAccess().getGroup_3_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__DirectionCS__Group_3_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group_3_2__0__Impl
	rule__DirectionCS__Group_3_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group_3_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getCommaKeyword_3_2_0()); }

	',' 

{ after(grammarAccess.getDirectionCSAccess().getCommaKeyword_3_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DirectionCS__Group_3_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DirectionCS__Group_3_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__Group_3_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getUsesAssignment_3_2_1()); }
(rule__DirectionCS__UsesAssignment_3_2_1)
{ after(grammarAccess.getDirectionCSAccess().getUsesAssignment_3_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MappingCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group__0__Impl
	rule__MappingCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getMappingCSAction_0()); }
(

)
{ after(grammarAccess.getMappingCSAccess().getMappingCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group__1__Impl
	rule__MappingCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getIsDefaultAssignment_1()); }
(rule__MappingCS__IsDefaultAssignment_1)?
{ after(grammarAccess.getMappingCSAccess().getIsDefaultAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group__2__Impl
	rule__MappingCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getMapKeyword_2()); }

	'map' 

{ after(grammarAccess.getMappingCSAccess().getMapKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group__3__Impl
	rule__MappingCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getNameAssignment_3()); }
(rule__MappingCS__NameAssignment_3)
{ after(grammarAccess.getMappingCSAccess().getNameAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group__4__Impl
	rule__MappingCS__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getGroup_4()); }
(rule__MappingCS__Group_4__0)?
{ after(grammarAccess.getMappingCSAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group__5__Impl
	rule__MappingCS__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getGroup_5()); }
(rule__MappingCS__Group_5__0)?
{ after(grammarAccess.getMappingCSAccess().getGroup_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group__6__Impl
	rule__MappingCS__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getLeftCurlyBracketKeyword_6()); }

	'{' 

{ after(grammarAccess.getMappingCSAccess().getLeftCurlyBracketKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group__7__Impl
	rule__MappingCS__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedDomainsAssignment_7()); }
(rule__MappingCS__OwnedDomainsAssignment_7)*
{ after(grammarAccess.getMappingCSAccess().getOwnedDomainsAssignment_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group__8__Impl
	rule__MappingCS__Group__9
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group__8__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getGroup_8()); }
(rule__MappingCS__Group_8__0)?
{ after(grammarAccess.getMappingCSAccess().getGroup_8()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group__9
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group__9__Impl
	rule__MappingCS__Group__10
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group__9__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedMappingSequenceAssignment_9()); }
(rule__MappingCS__OwnedMappingSequenceAssignment_9)?
{ after(grammarAccess.getMappingCSAccess().getOwnedMappingSequenceAssignment_9()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group__10
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group__10__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group__10__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getRightCurlyBracketKeyword_10()); }

	'}' 

{ after(grammarAccess.getMappingCSAccess().getRightCurlyBracketKeyword_10()); }
)

;
finally {
	restoreStackSize(stackSize);
}
























rule__MappingCS__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group_4__0__Impl
	rule__MappingCS__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getInKeyword_4_0()); }

	'in' 

{ after(grammarAccess.getMappingCSAccess().getInKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedInPathNameAssignment_4_1()); }
(rule__MappingCS__OwnedInPathNameAssignment_4_1)
{ after(grammarAccess.getMappingCSAccess().getOwnedInPathNameAssignment_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MappingCS__Group_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group_5__0__Impl
	rule__MappingCS__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group_5__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getUsesKeyword_5_0()); }

	'uses' 

{ after(grammarAccess.getMappingCSAccess().getUsesKeyword_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group_5__1__Impl
	rule__MappingCS__Group_5__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group_5__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedUsesPathNamesAssignment_5_1()); }
(rule__MappingCS__OwnedUsesPathNamesAssignment_5_1)
{ after(grammarAccess.getMappingCSAccess().getOwnedUsesPathNamesAssignment_5_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group_5__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group_5__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group_5__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getGroup_5_2()); }
(rule__MappingCS__Group_5_2__0)*
{ after(grammarAccess.getMappingCSAccess().getGroup_5_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__MappingCS__Group_5_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group_5_2__0__Impl
	rule__MappingCS__Group_5_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group_5_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getCommaKeyword_5_2_0()); }

	',' 

{ after(grammarAccess.getMappingCSAccess().getCommaKeyword_5_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group_5_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group_5_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group_5_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedUsesPathNamesAssignment_5_2_1()); }
(rule__MappingCS__OwnedUsesPathNamesAssignment_5_2_1)
{ after(grammarAccess.getMappingCSAccess().getOwnedUsesPathNamesAssignment_5_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MappingCS__Group_8__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group_8__0__Impl
	rule__MappingCS__Group_8__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group_8__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getWhereKeyword_8_0()); }

	'where' 

{ after(grammarAccess.getMappingCSAccess().getWhereKeyword_8_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCS__Group_8__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCS__Group_8__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__Group_8__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedMiddleAssignment_8_1()); }
(rule__MappingCS__OwnedMiddleAssignment_8_1)
{ after(grammarAccess.getMappingCSAccess().getOwnedMiddleAssignment_8_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MappingCallCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCallCS__Group__0__Impl
	rule__MappingCallCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallCSAccess().getMappingCallCSAction_0()); }
(

)
{ after(grammarAccess.getMappingCallCSAccess().getMappingCallCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCallCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCallCS__Group__1__Impl
	rule__MappingCallCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallCSAccess().getIsInfiniteAssignment_1()); }
(rule__MappingCallCS__IsInfiniteAssignment_1)?
{ after(grammarAccess.getMappingCallCSAccess().getIsInfiniteAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCallCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCallCS__Group__2__Impl
	rule__MappingCallCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallCSAccess().getCallKeyword_2()); }

	'call' 

{ after(grammarAccess.getMappingCallCSAccess().getCallKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCallCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCallCS__Group__3__Impl
	rule__MappingCallCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallCSAccess().getOwnedPathNameAssignment_3()); }
(rule__MappingCallCS__OwnedPathNameAssignment_3)
{ after(grammarAccess.getMappingCallCSAccess().getOwnedPathNameAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCallCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCallCS__Group__4__Impl
	rule__MappingCallCS__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallCSAccess().getLeftCurlyBracketKeyword_4()); }

	'{' 

{ after(grammarAccess.getMappingCallCSAccess().getLeftCurlyBracketKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCallCS__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCallCS__Group__5__Impl
	rule__MappingCallCS__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallCS__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallCSAccess().getOwnedBindingsAssignment_5()); }
(rule__MappingCallCS__OwnedBindingsAssignment_5)*
{ after(grammarAccess.getMappingCallCSAccess().getOwnedBindingsAssignment_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCallCS__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCallCS__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallCS__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallCSAccess().getRightCurlyBracketKeyword_6()); }

	'}' 

{ after(grammarAccess.getMappingCallCSAccess().getRightCurlyBracketKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}
















rule__MappingCallBindingCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCallBindingCS__Group__0__Impl
	rule__MappingCallBindingCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallBindingCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallBindingCSAccess().getReferredVariableAssignment_0()); }
(rule__MappingCallBindingCS__ReferredVariableAssignment_0)
{ after(grammarAccess.getMappingCallBindingCSAccess().getReferredVariableAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCallBindingCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCallBindingCS__Group__1__Impl
	rule__MappingCallBindingCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallBindingCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallBindingCSAccess().getAlternatives_1()); }
(rule__MappingCallBindingCS__Alternatives_1)
{ after(grammarAccess.getMappingCallBindingCSAccess().getAlternatives_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCallBindingCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCallBindingCS__Group__2__Impl
	rule__MappingCallBindingCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallBindingCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallBindingCSAccess().getOwnedValueAssignment_2()); }
(rule__MappingCallBindingCS__OwnedValueAssignment_2)
{ after(grammarAccess.getMappingCallBindingCSAccess().getOwnedValueAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingCallBindingCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingCallBindingCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallBindingCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallBindingCSAccess().getSemicolonKeyword_3()); }

	';' 

{ after(grammarAccess.getMappingCallBindingCSAccess().getSemicolonKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__MappingLoopCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingLoopCS__Group__0__Impl
	rule__MappingLoopCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingLoopCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingLoopCSAccess().getForKeyword_0()); }

	'for' 

{ after(grammarAccess.getMappingLoopCSAccess().getForKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingLoopCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingLoopCS__Group__1__Impl
	rule__MappingLoopCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingLoopCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingLoopCSAccess().getOwnedIteratorAssignment_1()); }
(rule__MappingLoopCS__OwnedIteratorAssignment_1)
{ after(grammarAccess.getMappingLoopCSAccess().getOwnedIteratorAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingLoopCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingLoopCS__Group__2__Impl
	rule__MappingLoopCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingLoopCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingLoopCSAccess().getInKeyword_2()); }

	'in' 

{ after(grammarAccess.getMappingLoopCSAccess().getInKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingLoopCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingLoopCS__Group__3__Impl
	rule__MappingLoopCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingLoopCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingLoopCSAccess().getOwnedInExpressionAssignment_3()); }
(rule__MappingLoopCS__OwnedInExpressionAssignment_3)
{ after(grammarAccess.getMappingLoopCSAccess().getOwnedInExpressionAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingLoopCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingLoopCS__Group__4__Impl
	rule__MappingLoopCS__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingLoopCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingLoopCSAccess().getLeftCurlyBracketKeyword_4()); }

	'{' 

{ after(grammarAccess.getMappingLoopCSAccess().getLeftCurlyBracketKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingLoopCS__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingLoopCS__Group__5__Impl
	rule__MappingLoopCS__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingLoopCS__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingLoopCSAccess().getOwnedMappingSequenceAssignment_5()); }
(rule__MappingLoopCS__OwnedMappingSequenceAssignment_5)
{ after(grammarAccess.getMappingLoopCSAccess().getOwnedMappingSequenceAssignment_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingLoopCS__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingLoopCS__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingLoopCS__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingLoopCSAccess().getRightCurlyBracketKeyword_6()); }

	'}' 

{ after(grammarAccess.getMappingLoopCSAccess().getRightCurlyBracketKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}
















rule__MappingIteratorCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingIteratorCS__Group__0__Impl
	rule__MappingIteratorCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingIteratorCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingIteratorCSAccess().getNameAssignment_0()); }
(rule__MappingIteratorCS__NameAssignment_0)
{ after(grammarAccess.getMappingIteratorCSAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingIteratorCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingIteratorCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingIteratorCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingIteratorCSAccess().getGroup_1()); }
(rule__MappingIteratorCS__Group_1__0)?
{ after(grammarAccess.getMappingIteratorCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MappingIteratorCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingIteratorCS__Group_1__0__Impl
	rule__MappingIteratorCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingIteratorCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingIteratorCSAccess().getColonKeyword_1_0()); }

	':' 

{ after(grammarAccess.getMappingIteratorCSAccess().getColonKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MappingIteratorCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MappingIteratorCS__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MappingIteratorCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingIteratorCSAccess().getOwnedTypeAssignment_1_1()); }
(rule__MappingIteratorCS__OwnedTypeAssignment_1_1)
{ after(grammarAccess.getMappingIteratorCSAccess().getOwnedTypeAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ImperativePredicateOrAssignmentCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImperativePredicateOrAssignmentCS__Group__0__Impl
	rule__ImperativePredicateOrAssignmentCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ImperativePredicateOrAssignmentCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsDefaultAssignment_0()); }
(rule__ImperativePredicateOrAssignmentCS__IsDefaultAssignment_0)?
{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsDefaultAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ImperativePredicateOrAssignmentCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImperativePredicateOrAssignmentCS__Group__1__Impl
	rule__ImperativePredicateOrAssignmentCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ImperativePredicateOrAssignmentCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getOwnedTargetAssignment_1()); }
(rule__ImperativePredicateOrAssignmentCS__OwnedTargetAssignment_1)
{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getOwnedTargetAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ImperativePredicateOrAssignmentCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImperativePredicateOrAssignmentCS__Group__2__Impl
	rule__ImperativePredicateOrAssignmentCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ImperativePredicateOrAssignmentCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getGroup_2()); }
(rule__ImperativePredicateOrAssignmentCS__Group_2__0)?
{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ImperativePredicateOrAssignmentCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImperativePredicateOrAssignmentCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ImperativePredicateOrAssignmentCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getSemicolonKeyword_3()); }

	';' 

{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getSemicolonKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__ImperativePredicateOrAssignmentCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImperativePredicateOrAssignmentCS__Group_2__0__Impl
	rule__ImperativePredicateOrAssignmentCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ImperativePredicateOrAssignmentCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getAlternatives_2_0()); }
(rule__ImperativePredicateOrAssignmentCS__Alternatives_2_0)
{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getAlternatives_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ImperativePredicateOrAssignmentCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImperativePredicateOrAssignmentCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ImperativePredicateOrAssignmentCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getOwnedInitExpressionAssignment_2_1()); }
(rule__ImperativePredicateOrAssignmentCS__OwnedInitExpressionAssignment_2_1)
{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getOwnedInitExpressionAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SourceDomainCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group__0__Impl
	rule__SourceDomainCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getIsCheckAssignment_0()); }
(rule__SourceDomainCS__IsCheckAssignment_0)
{ after(grammarAccess.getSourceDomainCSAccess().getIsCheckAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group__1__Impl
	rule__SourceDomainCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getDirectionAssignment_1()); }
(rule__SourceDomainCS__DirectionAssignment_1)
{ after(grammarAccess.getSourceDomainCSAccess().getDirectionAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group__2__Impl
	rule__SourceDomainCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getGroup_2()); }
(rule__SourceDomainCS__Group_2__0)?
{ after(grammarAccess.getSourceDomainCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group__3__Impl
	rule__SourceDomainCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getOwnedGuardPatternAssignment_3()); }
(rule__SourceDomainCS__OwnedGuardPatternAssignment_3)
{ after(grammarAccess.getSourceDomainCSAccess().getOwnedGuardPatternAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getOwnedBottomPatternAssignment_4()); }
(rule__SourceDomainCS__OwnedBottomPatternAssignment_4)
{ after(grammarAccess.getSourceDomainCSAccess().getOwnedBottomPatternAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__SourceDomainCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2__0__Impl
	rule__SourceDomainCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getLeftCurlyBracketKeyword_2_0()); }

	'{' 

{ after(grammarAccess.getSourceDomainCSAccess().getLeftCurlyBracketKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2__1__Impl
	rule__SourceDomainCS__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getGroup_2_1()); }
(rule__SourceDomainCS__Group_2_1__0)?
{ after(grammarAccess.getSourceDomainCSAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2__2__Impl
	rule__SourceDomainCS__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getGroup_2_2()); }
(rule__SourceDomainCS__Group_2_2__0)?
{ after(grammarAccess.getSourceDomainCSAccess().getGroup_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group_2__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getRightCurlyBracketKeyword_2_3()); }

	'}' 

{ after(grammarAccess.getSourceDomainCSAccess().getRightCurlyBracketKeyword_2_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__SourceDomainCS__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2_1__0__Impl
	rule__SourceDomainCS__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getCheckKeyword_2_1_0()); }

	'check' 

{ after(grammarAccess.getSourceDomainCSAccess().getCheckKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2_1__1__Impl
	rule__SourceDomainCS__Group_2_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getCheckedPropertiesAssignment_2_1_1()); }
(rule__SourceDomainCS__CheckedPropertiesAssignment_2_1_1)
{ after(grammarAccess.getSourceDomainCSAccess().getCheckedPropertiesAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group_2_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getGroup_2_1_2()); }
(rule__SourceDomainCS__Group_2_1_2__0)*
{ after(grammarAccess.getSourceDomainCSAccess().getGroup_2_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SourceDomainCS__Group_2_1_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2_1_2__0__Impl
	rule__SourceDomainCS__Group_2_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2_1_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getCommaKeyword_2_1_2_0()); }

	',' 

{ after(grammarAccess.getSourceDomainCSAccess().getCommaKeyword_2_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group_2_1_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2_1_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getCheckedPropertiesAssignment_2_1_2_1()); }
(rule__SourceDomainCS__CheckedPropertiesAssignment_2_1_2_1)
{ after(grammarAccess.getSourceDomainCSAccess().getCheckedPropertiesAssignment_2_1_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SourceDomainCS__Group_2_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2_2__0__Impl
	rule__SourceDomainCS__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getEnforceKeyword_2_2_0()); }

	'enforce' 

{ after(grammarAccess.getSourceDomainCSAccess().getEnforceKeyword_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group_2_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2_2__1__Impl
	rule__SourceDomainCS__Group_2_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getEnforcedPropertiesAssignment_2_2_1()); }
(rule__SourceDomainCS__EnforcedPropertiesAssignment_2_2_1)
{ after(grammarAccess.getSourceDomainCSAccess().getEnforcedPropertiesAssignment_2_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group_2_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getGroup_2_2_2()); }
(rule__SourceDomainCS__Group_2_2_2__0)*
{ after(grammarAccess.getSourceDomainCSAccess().getGroup_2_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SourceDomainCS__Group_2_2_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2_2_2__0__Impl
	rule__SourceDomainCS__Group_2_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2_2_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getCommaKeyword_2_2_2_0()); }

	',' 

{ after(grammarAccess.getSourceDomainCSAccess().getCommaKeyword_2_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceDomainCS__Group_2_2_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceDomainCS__Group_2_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__Group_2_2_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getEnforcedPropertiesAssignment_2_2_2_1()); }
(rule__SourceDomainCS__EnforcedPropertiesAssignment_2_2_2_1)
{ after(grammarAccess.getSourceDomainCSAccess().getEnforcedPropertiesAssignment_2_2_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SourceBottomPatternCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceBottomPatternCS__Group__0__Impl
	rule__SourceBottomPatternCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceBottomPatternCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceBottomPatternCSAccess().getBottomPatternCSAction_0()); }
(

)
{ after(grammarAccess.getSourceBottomPatternCSAccess().getBottomPatternCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceBottomPatternCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceBottomPatternCS__Group__1__Impl
	rule__SourceBottomPatternCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceBottomPatternCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceBottomPatternCSAccess().getLeftCurlyBracketKeyword_1()); }

	'{' 

{ after(grammarAccess.getSourceBottomPatternCSAccess().getLeftCurlyBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceBottomPatternCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceBottomPatternCS__Group__2__Impl
	rule__SourceBottomPatternCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceBottomPatternCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceBottomPatternCSAccess().getGroup_2()); }
(rule__SourceBottomPatternCS__Group_2__0)?
{ after(grammarAccess.getSourceBottomPatternCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceBottomPatternCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceBottomPatternCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceBottomPatternCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceBottomPatternCSAccess().getRightCurlyBracketKeyword_3()); }

	'}' 

{ after(grammarAccess.getSourceBottomPatternCSAccess().getRightCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__SourceBottomPatternCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceBottomPatternCS__Group_2__0__Impl
	rule__SourceBottomPatternCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceBottomPatternCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_0()); }
(rule__SourceBottomPatternCS__OwnedUnrealizedVariablesAssignment_2_0)
{ after(grammarAccess.getSourceBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceBottomPatternCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceBottomPatternCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceBottomPatternCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceBottomPatternCSAccess().getGroup_2_1()); }
(rule__SourceBottomPatternCS__Group_2_1__0)*
{ after(grammarAccess.getSourceBottomPatternCSAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SourceBottomPatternCS__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceBottomPatternCS__Group_2_1__0__Impl
	rule__SourceBottomPatternCS__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceBottomPatternCS__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceBottomPatternCSAccess().getCommaKeyword_2_1_0()); }

	',' 

{ after(grammarAccess.getSourceBottomPatternCSAccess().getCommaKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceBottomPatternCS__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceBottomPatternCS__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceBottomPatternCS__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_1_1()); }
(rule__SourceBottomPatternCS__OwnedUnrealizedVariablesAssignment_2_1_1)
{ after(grammarAccess.getSourceBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SourceGuardPatternCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceGuardPatternCS__Group__0__Impl
	rule__SourceGuardPatternCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceGuardPatternCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceGuardPatternCSAccess().getGuardPatternCSAction_0()); }
(

)
{ after(grammarAccess.getSourceGuardPatternCSAccess().getGuardPatternCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceGuardPatternCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceGuardPatternCS__Group__1__Impl
	rule__SourceGuardPatternCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceGuardPatternCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceGuardPatternCSAccess().getLeftParenthesisKeyword_1()); }

	'(' 

{ after(grammarAccess.getSourceGuardPatternCSAccess().getLeftParenthesisKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceGuardPatternCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceGuardPatternCS__Group__2__Impl
	rule__SourceGuardPatternCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceGuardPatternCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceGuardPatternCSAccess().getGroup_2()); }
(rule__SourceGuardPatternCS__Group_2__0)?
{ after(grammarAccess.getSourceGuardPatternCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceGuardPatternCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceGuardPatternCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceGuardPatternCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceGuardPatternCSAccess().getRightParenthesisKeyword_3()); }

	')' 

{ after(grammarAccess.getSourceGuardPatternCSAccess().getRightParenthesisKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__SourceGuardPatternCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceGuardPatternCS__Group_2__0__Impl
	rule__SourceGuardPatternCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceGuardPatternCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_0()); }
(rule__SourceGuardPatternCS__OwnedUnrealizedVariablesAssignment_2_0)
{ after(grammarAccess.getSourceGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceGuardPatternCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceGuardPatternCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceGuardPatternCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceGuardPatternCSAccess().getGroup_2_1()); }
(rule__SourceGuardPatternCS__Group_2_1__0)*
{ after(grammarAccess.getSourceGuardPatternCSAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SourceGuardPatternCS__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceGuardPatternCS__Group_2_1__0__Impl
	rule__SourceGuardPatternCS__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceGuardPatternCS__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceGuardPatternCSAccess().getCommaKeyword_2_1_0()); }

	',' 

{ after(grammarAccess.getSourceGuardPatternCSAccess().getCommaKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourceGuardPatternCS__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourceGuardPatternCS__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourceGuardPatternCS__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_1_1()); }
(rule__SourceGuardPatternCS__OwnedUnrealizedVariablesAssignment_2_1_1)
{ after(grammarAccess.getSourceGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MiddleDomainCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group__0__Impl
	rule__MiddleDomainCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getGroup_0()); }
(rule__MiddleDomainCS__Group_0__0)?
{ after(grammarAccess.getMiddleDomainCSAccess().getGroup_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleDomainCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group__1__Impl
	rule__MiddleDomainCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getOwnedGuardPatternAssignment_1()); }
(rule__MiddleDomainCS__OwnedGuardPatternAssignment_1)
{ after(grammarAccess.getMiddleDomainCSAccess().getOwnedGuardPatternAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleDomainCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getOwnedBottomPatternAssignment_2()); }
(rule__MiddleDomainCS__OwnedBottomPatternAssignment_2)
{ after(grammarAccess.getMiddleDomainCSAccess().getOwnedBottomPatternAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__MiddleDomainCS__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0__0__Impl
	rule__MiddleDomainCS__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getLeftCurlyBracketKeyword_0_0()); }

	'{' 

{ after(grammarAccess.getMiddleDomainCSAccess().getLeftCurlyBracketKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleDomainCS__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0__1__Impl
	rule__MiddleDomainCS__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getGroup_0_1()); }
(rule__MiddleDomainCS__Group_0_1__0)?
{ after(grammarAccess.getMiddleDomainCSAccess().getGroup_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleDomainCS__Group_0__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0__2__Impl
	rule__MiddleDomainCS__Group_0__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getGroup_0_2()); }
(rule__MiddleDomainCS__Group_0_2__0)?
{ after(grammarAccess.getMiddleDomainCSAccess().getGroup_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleDomainCS__Group_0__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getRightCurlyBracketKeyword_0_3()); }

	'}' 

{ after(grammarAccess.getMiddleDomainCSAccess().getRightCurlyBracketKeyword_0_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__MiddleDomainCS__Group_0_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0_1__0__Impl
	rule__MiddleDomainCS__Group_0_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getCheckKeyword_0_1_0()); }

	'check' 

{ after(grammarAccess.getMiddleDomainCSAccess().getCheckKeyword_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleDomainCS__Group_0_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0_1__1__Impl
	rule__MiddleDomainCS__Group_0_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getCheckedPropertiesAssignment_0_1_1()); }
(rule__MiddleDomainCS__CheckedPropertiesAssignment_0_1_1)
{ after(grammarAccess.getMiddleDomainCSAccess().getCheckedPropertiesAssignment_0_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleDomainCS__Group_0_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getGroup_0_1_2()); }
(rule__MiddleDomainCS__Group_0_1_2__0)*
{ after(grammarAccess.getMiddleDomainCSAccess().getGroup_0_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__MiddleDomainCS__Group_0_1_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0_1_2__0__Impl
	rule__MiddleDomainCS__Group_0_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0_1_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getCommaKeyword_0_1_2_0()); }

	',' 

{ after(grammarAccess.getMiddleDomainCSAccess().getCommaKeyword_0_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleDomainCS__Group_0_1_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0_1_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getCheckedPropertiesAssignment_0_1_2_1()); }
(rule__MiddleDomainCS__CheckedPropertiesAssignment_0_1_2_1)
{ after(grammarAccess.getMiddleDomainCSAccess().getCheckedPropertiesAssignment_0_1_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MiddleDomainCS__Group_0_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0_2__0__Impl
	rule__MiddleDomainCS__Group_0_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getEnforceKeyword_0_2_0()); }

	'enforce' 

{ after(grammarAccess.getMiddleDomainCSAccess().getEnforceKeyword_0_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleDomainCS__Group_0_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0_2__1__Impl
	rule__MiddleDomainCS__Group_0_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getEnforcedPropertiesAssignment_0_2_1()); }
(rule__MiddleDomainCS__EnforcedPropertiesAssignment_0_2_1)
{ after(grammarAccess.getMiddleDomainCSAccess().getEnforcedPropertiesAssignment_0_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleDomainCS__Group_0_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getGroup_0_2_2()); }
(rule__MiddleDomainCS__Group_0_2_2__0)*
{ after(grammarAccess.getMiddleDomainCSAccess().getGroup_0_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__MiddleDomainCS__Group_0_2_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0_2_2__0__Impl
	rule__MiddleDomainCS__Group_0_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0_2_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getCommaKeyword_0_2_2_0()); }

	',' 

{ after(grammarAccess.getMiddleDomainCSAccess().getCommaKeyword_0_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleDomainCS__Group_0_2_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleDomainCS__Group_0_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__Group_0_2_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getEnforcedPropertiesAssignment_0_2_2_1()); }
(rule__MiddleDomainCS__EnforcedPropertiesAssignment_0_2_2_1)
{ after(grammarAccess.getMiddleDomainCSAccess().getEnforcedPropertiesAssignment_0_2_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MiddleBottomPatternCS__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_0__0__Impl
	rule__MiddleBottomPatternCS__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getLeftCurlyBracketKeyword_0_0()); }

	'{' 

{ after(grammarAccess.getMiddleBottomPatternCSAccess().getLeftCurlyBracketKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_0__1__Impl
	rule__MiddleBottomPatternCS__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_1()); }
(rule__MiddleBottomPatternCS__OwnedUnrealizedVariablesAssignment_0_1)
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_0__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_0__2__Impl
	rule__MiddleBottomPatternCS__Group_0__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_0__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_0_2()); }
(rule__MiddleBottomPatternCS__Group_0_2__0)*
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_0__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_0__3__Impl
	rule__MiddleBottomPatternCS__Group_0__4
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_0__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getVerticalLineKeyword_0_3()); }

	'|' 

{ after(grammarAccess.getMiddleBottomPatternCSAccess().getVerticalLineKeyword_0_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_0__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_0__4__Impl
	rule__MiddleBottomPatternCS__Group_0__5
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_0__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedConstraintsAssignment_0_4()); }
(rule__MiddleBottomPatternCS__OwnedConstraintsAssignment_0_4)*
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedConstraintsAssignment_0_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_0__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_0__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_0__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getRightCurlyBracketKeyword_0_5()); }

	'}' 

{ after(grammarAccess.getMiddleBottomPatternCSAccess().getRightCurlyBracketKeyword_0_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__MiddleBottomPatternCS__Group_0_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_0_2__0__Impl
	rule__MiddleBottomPatternCS__Group_0_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_0_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getCommaKeyword_0_2_0()); }

	',' 

{ after(grammarAccess.getMiddleBottomPatternCSAccess().getCommaKeyword_0_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_0_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_0_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_0_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_2_1()); }
(rule__MiddleBottomPatternCS__OwnedUnrealizedVariablesAssignment_0_2_1)
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MiddleBottomPatternCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_1__0__Impl
	rule__MiddleBottomPatternCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getLeftCurlyBracketKeyword_1_0()); }

	'{' 

{ after(grammarAccess.getMiddleBottomPatternCSAccess().getLeftCurlyBracketKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_1__1__Impl
	rule__MiddleBottomPatternCS__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_1()); }
(rule__MiddleBottomPatternCS__OwnedUnrealizedVariablesAssignment_1_1)
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_1__2__Impl
	rule__MiddleBottomPatternCS__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_1_2()); }
(rule__MiddleBottomPatternCS__Group_1_2__0)*
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getGroup_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_1__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_1__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getRightCurlyBracketKeyword_1_3()); }

	'}' 

{ after(grammarAccess.getMiddleBottomPatternCSAccess().getRightCurlyBracketKeyword_1_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__MiddleBottomPatternCS__Group_1_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_1_2__0__Impl
	rule__MiddleBottomPatternCS__Group_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_1_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getCommaKeyword_1_2_0()); }

	',' 

{ after(grammarAccess.getMiddleBottomPatternCSAccess().getCommaKeyword_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_1_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_1_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_2_1()); }
(rule__MiddleBottomPatternCS__OwnedUnrealizedVariablesAssignment_1_2_1)
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MiddleBottomPatternCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_2__0__Impl
	rule__MiddleBottomPatternCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getLeftCurlyBracketKeyword_2_0()); }

	'{' 

{ after(grammarAccess.getMiddleBottomPatternCSAccess().getLeftCurlyBracketKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_2__1__Impl
	rule__MiddleBottomPatternCS__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedConstraintsAssignment_2_1()); }
(rule__MiddleBottomPatternCS__OwnedConstraintsAssignment_2_1)
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedConstraintsAssignment_2_1()); }
)
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedConstraintsAssignment_2_1()); }
(rule__MiddleBottomPatternCS__OwnedConstraintsAssignment_2_1)*
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedConstraintsAssignment_2_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getRightCurlyBracketKeyword_2_2()); }

	'}' 

{ after(grammarAccess.getMiddleBottomPatternCSAccess().getRightCurlyBracketKeyword_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__MiddleBottomPatternCS__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_3__0__Impl
	rule__MiddleBottomPatternCS__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getBottomPatternCSAction_3_0()); }
(

)
{ after(grammarAccess.getMiddleBottomPatternCSAccess().getBottomPatternCSAction_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_3__1__Impl
	rule__MiddleBottomPatternCS__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getLeftCurlyBracketKeyword_3_1()); }

	'{' 

{ after(grammarAccess.getMiddleBottomPatternCSAccess().getLeftCurlyBracketKeyword_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MiddleBottomPatternCS__Group_3__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MiddleBottomPatternCS__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__Group_3__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getRightCurlyBracketKeyword_3_2()); }

	'}' 

{ after(grammarAccess.getMiddleBottomPatternCSAccess().getRightCurlyBracketKeyword_3_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__TargetDomainCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group__0__Impl
	rule__TargetDomainCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getIsEnforceAssignment_0()); }
(rule__TargetDomainCS__IsEnforceAssignment_0)
{ after(grammarAccess.getTargetDomainCSAccess().getIsEnforceAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group__1__Impl
	rule__TargetDomainCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getDirectionAssignment_1()); }
(rule__TargetDomainCS__DirectionAssignment_1)
{ after(grammarAccess.getTargetDomainCSAccess().getDirectionAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group__2__Impl
	rule__TargetDomainCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getGroup_2()); }
(rule__TargetDomainCS__Group_2__0)?
{ after(grammarAccess.getTargetDomainCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group__3__Impl
	rule__TargetDomainCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getOwnedGuardPatternAssignment_3()); }
(rule__TargetDomainCS__OwnedGuardPatternAssignment_3)
{ after(grammarAccess.getTargetDomainCSAccess().getOwnedGuardPatternAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getOwnedBottomPatternAssignment_4()); }
(rule__TargetDomainCS__OwnedBottomPatternAssignment_4)
{ after(grammarAccess.getTargetDomainCSAccess().getOwnedBottomPatternAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__TargetDomainCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2__0__Impl
	rule__TargetDomainCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getLeftCurlyBracketKeyword_2_0()); }

	'{' 

{ after(grammarAccess.getTargetDomainCSAccess().getLeftCurlyBracketKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2__1__Impl
	rule__TargetDomainCS__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getGroup_2_1()); }
(rule__TargetDomainCS__Group_2_1__0)?
{ after(grammarAccess.getTargetDomainCSAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2__2__Impl
	rule__TargetDomainCS__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getGroup_2_2()); }
(rule__TargetDomainCS__Group_2_2__0)?
{ after(grammarAccess.getTargetDomainCSAccess().getGroup_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group_2__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getRightCurlyBracketKeyword_2_3()); }

	'}' 

{ after(grammarAccess.getTargetDomainCSAccess().getRightCurlyBracketKeyword_2_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__TargetDomainCS__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2_1__0__Impl
	rule__TargetDomainCS__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getCheckKeyword_2_1_0()); }

	'check' 

{ after(grammarAccess.getTargetDomainCSAccess().getCheckKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2_1__1__Impl
	rule__TargetDomainCS__Group_2_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getCheckedPropertiesAssignment_2_1_1()); }
(rule__TargetDomainCS__CheckedPropertiesAssignment_2_1_1)
{ after(grammarAccess.getTargetDomainCSAccess().getCheckedPropertiesAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group_2_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getGroup_2_1_2()); }
(rule__TargetDomainCS__Group_2_1_2__0)*
{ after(grammarAccess.getTargetDomainCSAccess().getGroup_2_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__TargetDomainCS__Group_2_1_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2_1_2__0__Impl
	rule__TargetDomainCS__Group_2_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2_1_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getCommaKeyword_2_1_2_0()); }

	',' 

{ after(grammarAccess.getTargetDomainCSAccess().getCommaKeyword_2_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group_2_1_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2_1_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getCheckedPropertiesAssignment_2_1_2_1()); }
(rule__TargetDomainCS__CheckedPropertiesAssignment_2_1_2_1)
{ after(grammarAccess.getTargetDomainCSAccess().getCheckedPropertiesAssignment_2_1_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TargetDomainCS__Group_2_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2_2__0__Impl
	rule__TargetDomainCS__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getEnforceKeyword_2_2_0()); }

	'enforce' 

{ after(grammarAccess.getTargetDomainCSAccess().getEnforceKeyword_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group_2_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2_2__1__Impl
	rule__TargetDomainCS__Group_2_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getEnforcedPropertiesAssignment_2_2_1()); }
(rule__TargetDomainCS__EnforcedPropertiesAssignment_2_2_1)
{ after(grammarAccess.getTargetDomainCSAccess().getEnforcedPropertiesAssignment_2_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group_2_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getGroup_2_2_2()); }
(rule__TargetDomainCS__Group_2_2_2__0)*
{ after(grammarAccess.getTargetDomainCSAccess().getGroup_2_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__TargetDomainCS__Group_2_2_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2_2_2__0__Impl
	rule__TargetDomainCS__Group_2_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2_2_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getCommaKeyword_2_2_2_0()); }

	',' 

{ after(grammarAccess.getTargetDomainCSAccess().getCommaKeyword_2_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetDomainCS__Group_2_2_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetDomainCS__Group_2_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__Group_2_2_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getEnforcedPropertiesAssignment_2_2_2_1()); }
(rule__TargetDomainCS__EnforcedPropertiesAssignment_2_2_2_1)
{ after(grammarAccess.getTargetDomainCSAccess().getEnforcedPropertiesAssignment_2_2_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TargetBottomPatternCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetBottomPatternCS__Group__0__Impl
	rule__TargetBottomPatternCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getBottomPatternCSAction_0()); }
(

)
{ after(grammarAccess.getTargetBottomPatternCSAccess().getBottomPatternCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetBottomPatternCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetBottomPatternCS__Group__1__Impl
	rule__TargetBottomPatternCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getLeftCurlyBracketKeyword_1()); }

	'{' 

{ after(grammarAccess.getTargetBottomPatternCSAccess().getLeftCurlyBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetBottomPatternCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetBottomPatternCS__Group__2__Impl
	rule__TargetBottomPatternCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getGroup_2()); }
(rule__TargetBottomPatternCS__Group_2__0)?
{ after(grammarAccess.getTargetBottomPatternCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetBottomPatternCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetBottomPatternCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getRightCurlyBracketKeyword_3()); }

	'}' 

{ after(grammarAccess.getTargetBottomPatternCSAccess().getRightCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__TargetBottomPatternCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetBottomPatternCS__Group_2__0__Impl
	rule__TargetBottomPatternCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getAlternatives_2_0()); }
(rule__TargetBottomPatternCS__Alternatives_2_0)
{ after(grammarAccess.getTargetBottomPatternCSAccess().getAlternatives_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetBottomPatternCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetBottomPatternCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getGroup_2_1()); }
(rule__TargetBottomPatternCS__Group_2_1__0)*
{ after(grammarAccess.getTargetBottomPatternCSAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TargetBottomPatternCS__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetBottomPatternCS__Group_2_1__0__Impl
	rule__TargetBottomPatternCS__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getCommaKeyword_2_1_0()); }

	',' 

{ after(grammarAccess.getTargetBottomPatternCSAccess().getCommaKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetBottomPatternCS__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetBottomPatternCS__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getAlternatives_2_1_1()); }
(rule__TargetBottomPatternCS__Alternatives_2_1_1)
{ after(grammarAccess.getTargetBottomPatternCSAccess().getAlternatives_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TargetGuardPatternCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetGuardPatternCS__Group__0__Impl
	rule__TargetGuardPatternCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetGuardPatternCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetGuardPatternCSAccess().getGuardPatternCSAction_0()); }
(

)
{ after(grammarAccess.getTargetGuardPatternCSAccess().getGuardPatternCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetGuardPatternCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetGuardPatternCS__Group__1__Impl
	rule__TargetGuardPatternCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetGuardPatternCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetGuardPatternCSAccess().getLeftParenthesisKeyword_1()); }

	'(' 

{ after(grammarAccess.getTargetGuardPatternCSAccess().getLeftParenthesisKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetGuardPatternCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetGuardPatternCS__Group__2__Impl
	rule__TargetGuardPatternCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetGuardPatternCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetGuardPatternCSAccess().getGroup_2()); }
(rule__TargetGuardPatternCS__Group_2__0)?
{ after(grammarAccess.getTargetGuardPatternCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetGuardPatternCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetGuardPatternCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetGuardPatternCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetGuardPatternCSAccess().getRightParenthesisKeyword_3()); }

	')' 

{ after(grammarAccess.getTargetGuardPatternCSAccess().getRightParenthesisKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__TargetGuardPatternCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetGuardPatternCS__Group_2__0__Impl
	rule__TargetGuardPatternCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetGuardPatternCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_0()); }
(rule__TargetGuardPatternCS__OwnedUnrealizedVariablesAssignment_2_0)
{ after(grammarAccess.getTargetGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetGuardPatternCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetGuardPatternCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetGuardPatternCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetGuardPatternCSAccess().getGroup_2_1()); }
(rule__TargetGuardPatternCS__Group_2_1__0)*
{ after(grammarAccess.getTargetGuardPatternCSAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TargetGuardPatternCS__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetGuardPatternCS__Group_2_1__0__Impl
	rule__TargetGuardPatternCS__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetGuardPatternCS__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetGuardPatternCSAccess().getCommaKeyword_2_1_0()); }

	',' 

{ after(grammarAccess.getTargetGuardPatternCSAccess().getCommaKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetGuardPatternCS__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetGuardPatternCS__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetGuardPatternCS__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_1_1()); }
(rule__TargetGuardPatternCS__OwnedUnrealizedVariablesAssignment_2_1_1)
{ after(grammarAccess.getTargetGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__BottomPatternCS__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_0__0__Impl
	rule__BottomPatternCS__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getLeftCurlyBracketKeyword_0_0()); }

	'{' 

{ after(grammarAccess.getBottomPatternCSAccess().getLeftCurlyBracketKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_0__1__Impl
	rule__BottomPatternCS__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getAlternatives_0_1()); }
(rule__BottomPatternCS__Alternatives_0_1)
{ after(grammarAccess.getBottomPatternCSAccess().getAlternatives_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_0__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_0__2__Impl
	rule__BottomPatternCS__Group_0__3
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_0__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getGroup_0_2()); }
(rule__BottomPatternCS__Group_0_2__0)*
{ after(grammarAccess.getBottomPatternCSAccess().getGroup_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_0__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_0__3__Impl
	rule__BottomPatternCS__Group_0__4
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_0__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getVerticalLineKeyword_0_3()); }

	'|' 

{ after(grammarAccess.getBottomPatternCSAccess().getVerticalLineKeyword_0_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_0__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_0__4__Impl
	rule__BottomPatternCS__Group_0__5
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_0__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsAssignment_0_4()); }
(rule__BottomPatternCS__OwnedConstraintsAssignment_0_4)*
{ after(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsAssignment_0_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_0__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_0__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_0__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getRightCurlyBracketKeyword_0_5()); }

	'}' 

{ after(grammarAccess.getBottomPatternCSAccess().getRightCurlyBracketKeyword_0_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__BottomPatternCS__Group_0_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_0_2__0__Impl
	rule__BottomPatternCS__Group_0_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_0_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getCommaKeyword_0_2_0()); }

	',' 

{ after(grammarAccess.getBottomPatternCSAccess().getCommaKeyword_0_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_0_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_0_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_0_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getAlternatives_0_2_1()); }
(rule__BottomPatternCS__Alternatives_0_2_1)
{ after(grammarAccess.getBottomPatternCSAccess().getAlternatives_0_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__BottomPatternCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_1__0__Impl
	rule__BottomPatternCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getLeftCurlyBracketKeyword_1_0()); }

	'{' 

{ after(grammarAccess.getBottomPatternCSAccess().getLeftCurlyBracketKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_1__1__Impl
	rule__BottomPatternCS__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getAlternatives_1_1()); }
(rule__BottomPatternCS__Alternatives_1_1)
{ after(grammarAccess.getBottomPatternCSAccess().getAlternatives_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_1__2__Impl
	rule__BottomPatternCS__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getGroup_1_2()); }
(rule__BottomPatternCS__Group_1_2__0)*
{ after(grammarAccess.getBottomPatternCSAccess().getGroup_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_1__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_1__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getRightCurlyBracketKeyword_1_3()); }

	'}' 

{ after(grammarAccess.getBottomPatternCSAccess().getRightCurlyBracketKeyword_1_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__BottomPatternCS__Group_1_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_1_2__0__Impl
	rule__BottomPatternCS__Group_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_1_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getCommaKeyword_1_2_0()); }

	',' 

{ after(grammarAccess.getBottomPatternCSAccess().getCommaKeyword_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_1_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_1_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getAlternatives_1_2_1()); }
(rule__BottomPatternCS__Alternatives_1_2_1)
{ after(grammarAccess.getBottomPatternCSAccess().getAlternatives_1_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__BottomPatternCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_2__0__Impl
	rule__BottomPatternCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getLeftCurlyBracketKeyword_2_0()); }

	'{' 

{ after(grammarAccess.getBottomPatternCSAccess().getLeftCurlyBracketKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_2__1__Impl
	rule__BottomPatternCS__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsAssignment_2_1()); }
(rule__BottomPatternCS__OwnedConstraintsAssignment_2_1)
{ after(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsAssignment_2_1()); }
)
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsAssignment_2_1()); }
(rule__BottomPatternCS__OwnedConstraintsAssignment_2_1)*
{ after(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsAssignment_2_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getRightCurlyBracketKeyword_2_2()); }

	'}' 

{ after(grammarAccess.getBottomPatternCSAccess().getRightCurlyBracketKeyword_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__BottomPatternCS__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_3__0__Impl
	rule__BottomPatternCS__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getBottomPatternCSAction_3_0()); }
(

)
{ after(grammarAccess.getBottomPatternCSAccess().getBottomPatternCSAction_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_3__1__Impl
	rule__BottomPatternCS__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getLeftCurlyBracketKeyword_3_1()); }

	'{' 

{ after(grammarAccess.getBottomPatternCSAccess().getLeftCurlyBracketKeyword_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__BottomPatternCS__Group_3__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__BottomPatternCS__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__Group_3__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getRightCurlyBracketKeyword_3_2()); }

	'}' 

{ after(grammarAccess.getBottomPatternCSAccess().getRightCurlyBracketKeyword_3_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__GuardPatternCS__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_0__0__Impl
	rule__GuardPatternCS__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getLeftParenthesisKeyword_0_0()); }

	'(' 

{ after(grammarAccess.getGuardPatternCSAccess().getLeftParenthesisKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_0__1__Impl
	rule__GuardPatternCS__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_1()); }
(rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_0_1)
{ after(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_0__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_0__2__Impl
	rule__GuardPatternCS__Group_0__3
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_0__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getGroup_0_2()); }
(rule__GuardPatternCS__Group_0_2__0)*
{ after(grammarAccess.getGuardPatternCSAccess().getGroup_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_0__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_0__3__Impl
	rule__GuardPatternCS__Group_0__4
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_0__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getVerticalLineKeyword_0_3()); }

	'|' 

{ after(grammarAccess.getGuardPatternCSAccess().getVerticalLineKeyword_0_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_0__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_0__4__Impl
	rule__GuardPatternCS__Group_0__5
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_0__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesAssignment_0_4()); }
(rule__GuardPatternCS__OwnedPredicatesAssignment_0_4)*
{ after(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesAssignment_0_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_0__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_0__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_0__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getRightParenthesisKeyword_0_5()); }

	')' 

{ after(grammarAccess.getGuardPatternCSAccess().getRightParenthesisKeyword_0_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__GuardPatternCS__Group_0_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_0_2__0__Impl
	rule__GuardPatternCS__Group_0_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_0_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getCommaKeyword_0_2_0()); }

	',' 

{ after(grammarAccess.getGuardPatternCSAccess().getCommaKeyword_0_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_0_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_0_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_0_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_2_1()); }
(rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_0_2_1)
{ after(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_0_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GuardPatternCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_1__0__Impl
	rule__GuardPatternCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getLeftParenthesisKeyword_1_0()); }

	'(' 

{ after(grammarAccess.getGuardPatternCSAccess().getLeftParenthesisKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_1__1__Impl
	rule__GuardPatternCS__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_1()); }
(rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_1_1)
{ after(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_1__2__Impl
	rule__GuardPatternCS__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getGroup_1_2()); }
(rule__GuardPatternCS__Group_1_2__0)*
{ after(grammarAccess.getGuardPatternCSAccess().getGroup_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_1__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_1__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getRightParenthesisKeyword_1_3()); }

	')' 

{ after(grammarAccess.getGuardPatternCSAccess().getRightParenthesisKeyword_1_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__GuardPatternCS__Group_1_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_1_2__0__Impl
	rule__GuardPatternCS__Group_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_1_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getCommaKeyword_1_2_0()); }

	',' 

{ after(grammarAccess.getGuardPatternCSAccess().getCommaKeyword_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_1_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_1_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_2_1()); }
(rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_1_2_1)
{ after(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesAssignment_1_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__GuardPatternCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_2__0__Impl
	rule__GuardPatternCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getLeftParenthesisKeyword_2_0()); }

	'(' 

{ after(grammarAccess.getGuardPatternCSAccess().getLeftParenthesisKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_2__1__Impl
	rule__GuardPatternCS__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesAssignment_2_1()); }
(rule__GuardPatternCS__OwnedPredicatesAssignment_2_1)
{ after(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesAssignment_2_1()); }
)
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesAssignment_2_1()); }
(rule__GuardPatternCS__OwnedPredicatesAssignment_2_1)*
{ after(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesAssignment_2_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getRightParenthesisKeyword_2_2()); }

	')' 

{ after(grammarAccess.getGuardPatternCSAccess().getRightParenthesisKeyword_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__GuardPatternCS__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_3__0__Impl
	rule__GuardPatternCS__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getGuardPatternCSAction_3_0()); }
(

)
{ after(grammarAccess.getGuardPatternCSAccess().getGuardPatternCSAction_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_3__1__Impl
	rule__GuardPatternCS__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getLeftParenthesisKeyword_3_1()); }

	'(' 

{ after(grammarAccess.getGuardPatternCSAccess().getLeftParenthesisKeyword_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardPatternCS__Group_3__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardPatternCS__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__Group_3__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getRightParenthesisKeyword_3_2()); }

	')' 

{ after(grammarAccess.getGuardPatternCSAccess().getRightParenthesisKeyword_3_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__GuardVariableCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardVariableCS__Group__0__Impl
	rule__GuardVariableCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardVariableCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardVariableCSAccess().getNameAssignment_0()); }
(rule__GuardVariableCS__NameAssignment_0)
{ after(grammarAccess.getGuardVariableCSAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardVariableCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardVariableCS__Group__1__Impl
	rule__GuardVariableCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardVariableCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardVariableCSAccess().getColonKeyword_1()); }

	':' 

{ after(grammarAccess.getGuardVariableCSAccess().getColonKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GuardVariableCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GuardVariableCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GuardVariableCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardVariableCSAccess().getOwnedTypeAssignment_2()); }
(rule__GuardVariableCS__OwnedTypeAssignment_2)
{ after(grammarAccess.getGuardVariableCSAccess().getOwnedTypeAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__ImportCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImportCS__Group__0__Impl
	rule__ImportCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getImportKeyword_0()); }

	'import' 

{ after(grammarAccess.getImportCSAccess().getImportKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ImportCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImportCS__Group__1__Impl
	rule__ImportCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getGroup_1()); }
(rule__ImportCS__Group_1__0)?
{ after(grammarAccess.getImportCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ImportCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImportCS__Group__2__Impl
	rule__ImportCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getOwnedPathNameAssignment_2()); }
(rule__ImportCS__OwnedPathNameAssignment_2)
{ after(grammarAccess.getImportCSAccess().getOwnedPathNameAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ImportCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImportCS__Group__3__Impl
	rule__ImportCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getGroup_3()); }
(rule__ImportCS__Group_3__0)?
{ after(grammarAccess.getImportCSAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ImportCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImportCS__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getSemicolonKeyword_4()); }

	';' 

{ after(grammarAccess.getImportCSAccess().getSemicolonKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__ImportCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImportCS__Group_1__0__Impl
	rule__ImportCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getNameAssignment_1_0()); }
(rule__ImportCS__NameAssignment_1_0)
{ after(grammarAccess.getImportCSAccess().getNameAssignment_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ImportCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImportCS__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getColonKeyword_1_1()); }

	':' 

{ after(grammarAccess.getImportCSAccess().getColonKeyword_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ImportCS__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImportCS__Group_3__0__Impl
	rule__ImportCS__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getIsAllAssignment_3_0()); }
(rule__ImportCS__IsAllAssignment_3_0)
{ after(grammarAccess.getImportCSAccess().getIsAllAssignment_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ImportCS__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ImportCS__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getAsteriskKeyword_3_1()); }

	'*' 

{ after(grammarAccess.getImportCSAccess().getAsteriskKeyword_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}







rule__ParamDeclarationCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ParamDeclarationCS__Group__0__Impl
	rule__ParamDeclarationCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParamDeclarationCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getParamDeclarationCSAccess().getNameAssignment_0()); }
(rule__ParamDeclarationCS__NameAssignment_0)
{ after(grammarAccess.getParamDeclarationCSAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ParamDeclarationCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ParamDeclarationCS__Group__1__Impl
	rule__ParamDeclarationCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ParamDeclarationCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getParamDeclarationCSAccess().getColonKeyword_1()); }

	':' 

{ after(grammarAccess.getParamDeclarationCSAccess().getColonKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ParamDeclarationCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ParamDeclarationCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParamDeclarationCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getParamDeclarationCSAccess().getOwnedTypeAssignment_2()); }
(rule__ParamDeclarationCS__OwnedTypeAssignment_2)
{ after(grammarAccess.getParamDeclarationCSAccess().getOwnedTypeAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__PredicateCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PredicateCS__Group__0__Impl
	rule__PredicateCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateCSAccess().getOwnedConditionAssignment_0()); }
(rule__PredicateCS__OwnedConditionAssignment_0)
{ after(grammarAccess.getPredicateCSAccess().getOwnedConditionAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PredicateCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PredicateCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateCSAccess().getSemicolonKeyword_1()); }

	';' 

{ after(grammarAccess.getPredicateCSAccess().getSemicolonKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__PredicateOrAssignmentCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PredicateOrAssignmentCS__Group__0__Impl
	rule__PredicateOrAssignmentCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateOrAssignmentCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateOrAssignmentCSAccess().getIsDefaultAssignment_0()); }
(rule__PredicateOrAssignmentCS__IsDefaultAssignment_0)?
{ after(grammarAccess.getPredicateOrAssignmentCSAccess().getIsDefaultAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PredicateOrAssignmentCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PredicateOrAssignmentCS__Group__1__Impl
	rule__PredicateOrAssignmentCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateOrAssignmentCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateOrAssignmentCSAccess().getOwnedTargetAssignment_1()); }
(rule__PredicateOrAssignmentCS__OwnedTargetAssignment_1)
{ after(grammarAccess.getPredicateOrAssignmentCSAccess().getOwnedTargetAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PredicateOrAssignmentCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PredicateOrAssignmentCS__Group__2__Impl
	rule__PredicateOrAssignmentCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateOrAssignmentCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateOrAssignmentCSAccess().getGroup_2()); }
(rule__PredicateOrAssignmentCS__Group_2__0)?
{ after(grammarAccess.getPredicateOrAssignmentCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PredicateOrAssignmentCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PredicateOrAssignmentCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateOrAssignmentCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateOrAssignmentCSAccess().getSemicolonKeyword_3()); }

	';' 

{ after(grammarAccess.getPredicateOrAssignmentCSAccess().getSemicolonKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__PredicateOrAssignmentCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PredicateOrAssignmentCS__Group_2__0__Impl
	rule__PredicateOrAssignmentCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateOrAssignmentCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateOrAssignmentCSAccess().getColonEqualsSignKeyword_2_0()); }

	':=' 

{ after(grammarAccess.getPredicateOrAssignmentCSAccess().getColonEqualsSignKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PredicateOrAssignmentCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PredicateOrAssignmentCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateOrAssignmentCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateOrAssignmentCSAccess().getOwnedInitExpressionAssignment_2_1()); }
(rule__PredicateOrAssignmentCS__OwnedInitExpressionAssignment_2_1)
{ after(grammarAccess.getPredicateOrAssignmentCSAccess().getOwnedInitExpressionAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__QueryCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group__0__Impl
	rule__QueryCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getQueryKeyword_0()); }

	'query' 

{ after(grammarAccess.getQueryCSAccess().getQueryKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group__1__Impl
	rule__QueryCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getOwnedPathNameAssignment_1()); }
(rule__QueryCS__OwnedPathNameAssignment_1)
{ after(grammarAccess.getQueryCSAccess().getOwnedPathNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group__2__Impl
	rule__QueryCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getNameAssignment_2()); }
(rule__QueryCS__NameAssignment_2)
{ after(grammarAccess.getQueryCSAccess().getNameAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group__3__Impl
	rule__QueryCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getLeftParenthesisKeyword_3()); }

	'(' 

{ after(grammarAccess.getQueryCSAccess().getLeftParenthesisKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group__4__Impl
	rule__QueryCS__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getGroup_4()); }
(rule__QueryCS__Group_4__0)?
{ after(grammarAccess.getQueryCSAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group__5__Impl
	rule__QueryCS__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getRightParenthesisKeyword_5()); }

	')' 

{ after(grammarAccess.getQueryCSAccess().getRightParenthesisKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group__6__Impl
	rule__QueryCS__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getColonKeyword_6()); }

	':' 

{ after(grammarAccess.getQueryCSAccess().getColonKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group__7__Impl
	rule__QueryCS__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getOwnedTypeAssignment_7()); }
(rule__QueryCS__OwnedTypeAssignment_7)
{ after(grammarAccess.getQueryCSAccess().getOwnedTypeAssignment_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group__8__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group__8__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getAlternatives_8()); }
(rule__QueryCS__Alternatives_8)
{ after(grammarAccess.getQueryCSAccess().getAlternatives_8()); }
)

;
finally {
	restoreStackSize(stackSize);
}




















rule__QueryCS__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group_4__0__Impl
	rule__QueryCS__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getOwnedParametersAssignment_4_0()); }
(rule__QueryCS__OwnedParametersAssignment_4_0)
{ after(grammarAccess.getQueryCSAccess().getOwnedParametersAssignment_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getGroup_4_1()); }
(rule__QueryCS__Group_4_1__0)*
{ after(grammarAccess.getQueryCSAccess().getGroup_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__QueryCS__Group_4_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group_4_1__0__Impl
	rule__QueryCS__Group_4_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group_4_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getCommaKeyword_4_1_0()); }

	',' 

{ after(grammarAccess.getQueryCSAccess().getCommaKeyword_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group_4_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group_4_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group_4_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getOwnedParametersAssignment_4_1_1()); }
(rule__QueryCS__OwnedParametersAssignment_4_1_1)
{ after(grammarAccess.getQueryCSAccess().getOwnedParametersAssignment_4_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__QueryCS__Group_8_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group_8_1__0__Impl
	rule__QueryCS__Group_8_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group_8_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getLeftCurlyBracketKeyword_8_1_0()); }

	'{' 

{ after(grammarAccess.getQueryCSAccess().getLeftCurlyBracketKeyword_8_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group_8_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group_8_1__1__Impl
	rule__QueryCS__Group_8_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group_8_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getOwnedExpressionAssignment_8_1_1()); }
(rule__QueryCS__OwnedExpressionAssignment_8_1_1)
{ after(grammarAccess.getQueryCSAccess().getOwnedExpressionAssignment_8_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QueryCS__Group_8_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QueryCS__Group_8_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__Group_8_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getRightCurlyBracketKeyword_8_1_2()); }

	'}' 

{ after(grammarAccess.getQueryCSAccess().getRightCurlyBracketKeyword_8_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__ScopeNameCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ScopeNameCS__Group__0__Impl
	rule__ScopeNameCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeNameCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getScopeNameCSAccess().getOwnedPathElementsAssignment_0()); }
(rule__ScopeNameCS__OwnedPathElementsAssignment_0)
{ after(grammarAccess.getScopeNameCSAccess().getOwnedPathElementsAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ScopeNameCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ScopeNameCS__Group__1__Impl
	rule__ScopeNameCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeNameCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getScopeNameCSAccess().getColonColonKeyword_1()); }

	'::' 

{ after(grammarAccess.getScopeNameCSAccess().getColonColonKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ScopeNameCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ScopeNameCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeNameCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getScopeNameCSAccess().getGroup_2()); }
(rule__ScopeNameCS__Group_2__0)*
{ after(grammarAccess.getScopeNameCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__ScopeNameCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ScopeNameCS__Group_2__0__Impl
	rule__ScopeNameCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeNameCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getScopeNameCSAccess().getOwnedPathElementsAssignment_2_0()); }
(rule__ScopeNameCS__OwnedPathElementsAssignment_2_0)
{ after(grammarAccess.getScopeNameCSAccess().getOwnedPathElementsAssignment_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ScopeNameCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ScopeNameCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeNameCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getScopeNameCSAccess().getColonColonKeyword_2_1()); }

	'::' 

{ after(grammarAccess.getScopeNameCSAccess().getColonColonKeyword_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TransformationCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TransformationCS__Group__0__Impl
	rule__TransformationCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TransformationCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTransformationCSAccess().getTransformationKeyword_0()); }

	'transformation' 

{ after(grammarAccess.getTransformationCSAccess().getTransformationKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TransformationCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TransformationCS__Group__1__Impl
	rule__TransformationCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TransformationCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTransformationCSAccess().getOwnedPathNameAssignment_1()); }
(rule__TransformationCS__OwnedPathNameAssignment_1)?
{ after(grammarAccess.getTransformationCSAccess().getOwnedPathNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TransformationCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TransformationCS__Group__2__Impl
	rule__TransformationCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TransformationCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTransformationCSAccess().getNameAssignment_2()); }
(rule__TransformationCS__NameAssignment_2)
{ after(grammarAccess.getTransformationCSAccess().getNameAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TransformationCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TransformationCS__Group__3__Impl
	rule__TransformationCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__TransformationCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTransformationCSAccess().getLeftCurlyBracketKeyword_3()); }

	'{' 

{ after(grammarAccess.getTransformationCSAccess().getLeftCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TransformationCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TransformationCS__Group__4__Impl
	rule__TransformationCS__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__TransformationCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTransformationCSAccess().getGroup_4()); }
(rule__TransformationCS__Group_4__0)*
{ after(grammarAccess.getTransformationCSAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TransformationCS__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TransformationCS__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TransformationCS__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTransformationCSAccess().getRightCurlyBracketKeyword_5()); }

	'}' 

{ after(grammarAccess.getTransformationCSAccess().getRightCurlyBracketKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__TransformationCS__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TransformationCS__Group_4__0__Impl
	rule__TransformationCS__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TransformationCS__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTransformationCSAccess().getOwnedDirectionsAssignment_4_0()); }
(rule__TransformationCS__OwnedDirectionsAssignment_4_0)
{ after(grammarAccess.getTransformationCSAccess().getOwnedDirectionsAssignment_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TransformationCS__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TransformationCS__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TransformationCS__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTransformationCSAccess().getSemicolonKeyword_4_1()); }

	';' 

{ after(grammarAccess.getTransformationCSAccess().getSemicolonKeyword_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__UnrealizedVariableCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__UnrealizedVariableCS__Group__0__Impl
	rule__UnrealizedVariableCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnrealizedVariableCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnrealizedVariableCSAccess().getNameAssignment_0()); }
(rule__UnrealizedVariableCS__NameAssignment_0)
{ after(grammarAccess.getUnrealizedVariableCSAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__UnrealizedVariableCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__UnrealizedVariableCS__Group__1__Impl
	rule__UnrealizedVariableCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__UnrealizedVariableCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnrealizedVariableCSAccess().getGroup_1()); }
(rule__UnrealizedVariableCS__Group_1__0)?
{ after(grammarAccess.getUnrealizedVariableCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__UnrealizedVariableCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__UnrealizedVariableCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnrealizedVariableCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnrealizedVariableCSAccess().getGroup_2()); }
(rule__UnrealizedVariableCS__Group_2__0)?
{ after(grammarAccess.getUnrealizedVariableCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__UnrealizedVariableCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__UnrealizedVariableCS__Group_1__0__Impl
	rule__UnrealizedVariableCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnrealizedVariableCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnrealizedVariableCSAccess().getColonKeyword_1_0()); }

	':' 

{ after(grammarAccess.getUnrealizedVariableCSAccess().getColonKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__UnrealizedVariableCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__UnrealizedVariableCS__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnrealizedVariableCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnrealizedVariableCSAccess().getOwnedTypeAssignment_1_1()); }
(rule__UnrealizedVariableCS__OwnedTypeAssignment_1_1)
{ after(grammarAccess.getUnrealizedVariableCSAccess().getOwnedTypeAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__UnrealizedVariableCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__UnrealizedVariableCS__Group_2__0__Impl
	rule__UnrealizedVariableCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnrealizedVariableCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnrealizedVariableCSAccess().getColonEqualsSignKeyword_2_0()); }

	':=' 

{ after(grammarAccess.getUnrealizedVariableCSAccess().getColonEqualsSignKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__UnrealizedVariableCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__UnrealizedVariableCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnrealizedVariableCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnrealizedVariableCSAccess().getOwnedInitExpressionAssignment_2_1()); }
(rule__UnrealizedVariableCS__OwnedInitExpressionAssignment_2_1)
{ after(grammarAccess.getUnrealizedVariableCSAccess().getOwnedInitExpressionAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__RealizedVariableCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RealizedVariableCS__Group__0__Impl
	rule__RealizedVariableCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RealizedVariableCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRealizedVariableCSAccess().getRealizeKeyword_0()); }

	'realize' 

{ after(grammarAccess.getRealizedVariableCSAccess().getRealizeKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RealizedVariableCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RealizedVariableCS__Group__1__Impl
	rule__RealizedVariableCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RealizedVariableCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRealizedVariableCSAccess().getNameAssignment_1()); }
(rule__RealizedVariableCS__NameAssignment_1)
{ after(grammarAccess.getRealizedVariableCSAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RealizedVariableCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RealizedVariableCS__Group__2__Impl
	rule__RealizedVariableCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RealizedVariableCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRealizedVariableCSAccess().getColonKeyword_2()); }

	':' 

{ after(grammarAccess.getRealizedVariableCSAccess().getColonKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RealizedVariableCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RealizedVariableCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RealizedVariableCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRealizedVariableCSAccess().getOwnedTypeAssignment_3()); }
(rule__RealizedVariableCS__OwnedTypeAssignment_3)
{ after(grammarAccess.getRealizedVariableCSAccess().getOwnedTypeAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}











rule__URIPathNameCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__URIPathNameCS__Group__0__Impl
	rule__URIPathNameCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__URIPathNameCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getURIPathNameCSAccess().getOwnedPathElementsAssignment_0()); }
(rule__URIPathNameCS__OwnedPathElementsAssignment_0)
{ after(grammarAccess.getURIPathNameCSAccess().getOwnedPathElementsAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__URIPathNameCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__URIPathNameCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__URIPathNameCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getURIPathNameCSAccess().getGroup_1()); }
(rule__URIPathNameCS__Group_1__0)*
{ after(grammarAccess.getURIPathNameCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__URIPathNameCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__URIPathNameCS__Group_1__0__Impl
	rule__URIPathNameCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__URIPathNameCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getURIPathNameCSAccess().getColonColonKeyword_1_0()); }

	'::' 

{ after(grammarAccess.getURIPathNameCSAccess().getColonColonKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__URIPathNameCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__URIPathNameCS__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__URIPathNameCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getURIPathNameCSAccess().getOwnedPathElementsAssignment_1_1()); }
(rule__URIPathNameCS__OwnedPathElementsAssignment_1_1)
{ after(grammarAccess.getURIPathNameCSAccess().getOwnedPathElementsAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__URIFirstPathElementCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__URIFirstPathElementCS__Group_1__0__Impl
	rule__URIFirstPathElementCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__URIFirstPathElementCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getURIFirstPathElementCSAccess().getPathElementWithURICSAction_1_0()); }
(

)
{ after(grammarAccess.getURIFirstPathElementCSAccess().getPathElementWithURICSAction_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__URIFirstPathElementCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__URIFirstPathElementCS__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__URIFirstPathElementCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementAssignment_1_1()); }
(rule__URIFirstPathElementCS__ReferredElementAssignment_1_1)
{ after(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__CollectionTypeCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionTypeCS__Group__0__Impl
	rule__CollectionTypeCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionTypeCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionTypeCSAccess().getNameAssignment_0()); }
(rule__CollectionTypeCS__NameAssignment_0)
{ after(grammarAccess.getCollectionTypeCSAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionTypeCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionTypeCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionTypeCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionTypeCSAccess().getGroup_1()); }
(rule__CollectionTypeCS__Group_1__0)?
{ after(grammarAccess.getCollectionTypeCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__CollectionTypeCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionTypeCS__Group_1__0__Impl
	rule__CollectionTypeCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionTypeCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionTypeCSAccess().getLeftParenthesisKeyword_1_0()); }

	'(' 

{ after(grammarAccess.getCollectionTypeCSAccess().getLeftParenthesisKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionTypeCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionTypeCS__Group_1__1__Impl
	rule__CollectionTypeCS__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionTypeCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionTypeCSAccess().getOwnedTypeAssignment_1_1()); }
(rule__CollectionTypeCS__OwnedTypeAssignment_1_1)
{ after(grammarAccess.getCollectionTypeCSAccess().getOwnedTypeAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionTypeCS__Group_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionTypeCS__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionTypeCS__Group_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionTypeCSAccess().getRightParenthesisKeyword_1_2()); }

	')' 

{ after(grammarAccess.getCollectionTypeCSAccess().getRightParenthesisKeyword_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__MapTypeCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapTypeCS__Group__0__Impl
	rule__MapTypeCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MapTypeCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapTypeCSAccess().getNameAssignment_0()); }
(rule__MapTypeCS__NameAssignment_0)
{ after(grammarAccess.getMapTypeCSAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapTypeCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapTypeCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MapTypeCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapTypeCSAccess().getGroup_1()); }
(rule__MapTypeCS__Group_1__0)?
{ after(grammarAccess.getMapTypeCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MapTypeCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapTypeCS__Group_1__0__Impl
	rule__MapTypeCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MapTypeCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapTypeCSAccess().getLeftParenthesisKeyword_1_0()); }

	'(' 

{ after(grammarAccess.getMapTypeCSAccess().getLeftParenthesisKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapTypeCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapTypeCS__Group_1__1__Impl
	rule__MapTypeCS__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MapTypeCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapTypeCSAccess().getOwnedKeyTypeAssignment_1_1()); }
(rule__MapTypeCS__OwnedKeyTypeAssignment_1_1)
{ after(grammarAccess.getMapTypeCSAccess().getOwnedKeyTypeAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapTypeCS__Group_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapTypeCS__Group_1__2__Impl
	rule__MapTypeCS__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MapTypeCS__Group_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapTypeCSAccess().getCommaKeyword_1_2()); }

	',' 

{ after(grammarAccess.getMapTypeCSAccess().getCommaKeyword_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapTypeCS__Group_1__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapTypeCS__Group_1__3__Impl
	rule__MapTypeCS__Group_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__MapTypeCS__Group_1__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapTypeCSAccess().getOwnedValueTypeAssignment_1_3()); }
(rule__MapTypeCS__OwnedValueTypeAssignment_1_3)
{ after(grammarAccess.getMapTypeCSAccess().getOwnedValueTypeAssignment_1_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapTypeCS__Group_1__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapTypeCS__Group_1__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MapTypeCS__Group_1__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapTypeCSAccess().getRightParenthesisKeyword_1_4()); }

	')' 

{ after(grammarAccess.getMapTypeCSAccess().getRightParenthesisKeyword_1_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__TupleTypeCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleTypeCS__Group__0__Impl
	rule__TupleTypeCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getNameAssignment_0()); }
(rule__TupleTypeCS__NameAssignment_0)
{ after(grammarAccess.getTupleTypeCSAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleTypeCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleTypeCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getGroup_1()); }
(rule__TupleTypeCS__Group_1__0)?
{ after(grammarAccess.getTupleTypeCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TupleTypeCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleTypeCS__Group_1__0__Impl
	rule__TupleTypeCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getLeftParenthesisKeyword_1_0()); }

	'(' 

{ after(grammarAccess.getTupleTypeCSAccess().getLeftParenthesisKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleTypeCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleTypeCS__Group_1__1__Impl
	rule__TupleTypeCS__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getGroup_1_1()); }
(rule__TupleTypeCS__Group_1_1__0)?
{ after(grammarAccess.getTupleTypeCSAccess().getGroup_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleTypeCS__Group_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleTypeCS__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__Group_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getRightParenthesisKeyword_1_2()); }

	')' 

{ after(grammarAccess.getTupleTypeCSAccess().getRightParenthesisKeyword_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__TupleTypeCS__Group_1_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleTypeCS__Group_1_1__0__Impl
	rule__TupleTypeCS__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__Group_1_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getOwnedPartsAssignment_1_1_0()); }
(rule__TupleTypeCS__OwnedPartsAssignment_1_1_0)
{ after(grammarAccess.getTupleTypeCSAccess().getOwnedPartsAssignment_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleTypeCS__Group_1_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleTypeCS__Group_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__Group_1_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getGroup_1_1_1()); }
(rule__TupleTypeCS__Group_1_1_1__0)*
{ after(grammarAccess.getTupleTypeCSAccess().getGroup_1_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TupleTypeCS__Group_1_1_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleTypeCS__Group_1_1_1__0__Impl
	rule__TupleTypeCS__Group_1_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__Group_1_1_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getCommaKeyword_1_1_1_0()); }

	',' 

{ after(grammarAccess.getTupleTypeCSAccess().getCommaKeyword_1_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleTypeCS__Group_1_1_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleTypeCS__Group_1_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__Group_1_1_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getOwnedPartsAssignment_1_1_1_1()); }
(rule__TupleTypeCS__OwnedPartsAssignment_1_1_1_1)
{ after(grammarAccess.getTupleTypeCSAccess().getOwnedPartsAssignment_1_1_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TuplePartCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TuplePartCS__Group__0__Impl
	rule__TuplePartCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePartCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTuplePartCSAccess().getNameAssignment_0()); }
(rule__TuplePartCS__NameAssignment_0)
{ after(grammarAccess.getTuplePartCSAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TuplePartCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TuplePartCS__Group__1__Impl
	rule__TuplePartCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePartCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTuplePartCSAccess().getColonKeyword_1()); }

	':' 

{ after(grammarAccess.getTuplePartCSAccess().getColonKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TuplePartCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TuplePartCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePartCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTuplePartCSAccess().getOwnedTypeAssignment_2()); }
(rule__TuplePartCS__OwnedTypeAssignment_2)
{ after(grammarAccess.getTuplePartCSAccess().getOwnedTypeAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__CollectionLiteralExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralExpCS__Group__0__Impl
	rule__CollectionLiteralExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedTypeAssignment_0()); }
(rule__CollectionLiteralExpCS__OwnedTypeAssignment_0)
{ after(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedTypeAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralExpCS__Group__1__Impl
	rule__CollectionLiteralExpCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getLeftCurlyBracketKeyword_1()); }

	'{' 

{ after(grammarAccess.getCollectionLiteralExpCSAccess().getLeftCurlyBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralExpCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralExpCS__Group__2__Impl
	rule__CollectionLiteralExpCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExpCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getGroup_2()); }
(rule__CollectionLiteralExpCS__Group_2__0)?
{ after(grammarAccess.getCollectionLiteralExpCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralExpCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralExpCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExpCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getRightCurlyBracketKeyword_3()); }

	'}' 

{ after(grammarAccess.getCollectionLiteralExpCSAccess().getRightCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__CollectionLiteralExpCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralExpCS__Group_2__0__Impl
	rule__CollectionLiteralExpCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExpCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedPartsAssignment_2_0()); }
(rule__CollectionLiteralExpCS__OwnedPartsAssignment_2_0)
{ after(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedPartsAssignment_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralExpCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralExpCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExpCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getGroup_2_1()); }
(rule__CollectionLiteralExpCS__Group_2_1__0)*
{ after(grammarAccess.getCollectionLiteralExpCSAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__CollectionLiteralExpCS__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralExpCS__Group_2_1__0__Impl
	rule__CollectionLiteralExpCS__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExpCS__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getCommaKeyword_2_1_0()); }

	',' 

{ after(grammarAccess.getCollectionLiteralExpCSAccess().getCommaKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralExpCS__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralExpCS__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExpCS__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedPartsAssignment_2_1_1()); }
(rule__CollectionLiteralExpCS__OwnedPartsAssignment_2_1_1)
{ after(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedPartsAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__CollectionLiteralPartCS__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralPartCS__Group_0__0__Impl
	rule__CollectionLiteralPartCS__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPartCS__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedExpressionAssignment_0_0()); }
(rule__CollectionLiteralPartCS__OwnedExpressionAssignment_0_0)
{ after(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedExpressionAssignment_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralPartCS__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralPartCS__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPartCS__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralPartCSAccess().getGroup_0_1()); }
(rule__CollectionLiteralPartCS__Group_0_1__0)?
{ after(grammarAccess.getCollectionLiteralPartCSAccess().getGroup_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__CollectionLiteralPartCS__Group_0_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralPartCS__Group_0_1__0__Impl
	rule__CollectionLiteralPartCS__Group_0_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPartCS__Group_0_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralPartCSAccess().getFullStopFullStopKeyword_0_1_0()); }

	'..' 

{ after(grammarAccess.getCollectionLiteralPartCSAccess().getFullStopFullStopKeyword_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralPartCS__Group_0_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionLiteralPartCS__Group_0_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPartCS__Group_0_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedLastExpressionAssignment_0_1_1()); }
(rule__CollectionLiteralPartCS__OwnedLastExpressionAssignment_0_1_1)
{ after(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedLastExpressionAssignment_0_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__CollectionPatternCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionPatternCS__Group__0__Impl
	rule__CollectionPatternCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getOwnedTypeAssignment_0()); }
(rule__CollectionPatternCS__OwnedTypeAssignment_0)
{ after(grammarAccess.getCollectionPatternCSAccess().getOwnedTypeAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionPatternCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionPatternCS__Group__1__Impl
	rule__CollectionPatternCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getLeftCurlyBracketKeyword_1()); }

	'{' 

{ after(grammarAccess.getCollectionPatternCSAccess().getLeftCurlyBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionPatternCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionPatternCS__Group__2__Impl
	rule__CollectionPatternCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getGroup_2()); }
(rule__CollectionPatternCS__Group_2__0)?
{ after(grammarAccess.getCollectionPatternCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionPatternCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionPatternCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getRightCurlyBracketKeyword_3()); }

	'}' 

{ after(grammarAccess.getCollectionPatternCSAccess().getRightCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__CollectionPatternCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionPatternCS__Group_2__0__Impl
	rule__CollectionPatternCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getOwnedPartsAssignment_2_0()); }
(rule__CollectionPatternCS__OwnedPartsAssignment_2_0)
{ after(grammarAccess.getCollectionPatternCSAccess().getOwnedPartsAssignment_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionPatternCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionPatternCS__Group_2__1__Impl
	rule__CollectionPatternCS__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getGroup_2_1()); }
(rule__CollectionPatternCS__Group_2_1__0)*
{ after(grammarAccess.getCollectionPatternCSAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionPatternCS__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionPatternCS__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getGroup_2_2()); }
(rule__CollectionPatternCS__Group_2_2__0)
{ after(grammarAccess.getCollectionPatternCSAccess().getGroup_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__CollectionPatternCS__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionPatternCS__Group_2_1__0__Impl
	rule__CollectionPatternCS__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getCommaKeyword_2_1_0()); }

	',' 

{ after(grammarAccess.getCollectionPatternCSAccess().getCommaKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionPatternCS__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionPatternCS__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getOwnedPartsAssignment_2_1_1()); }
(rule__CollectionPatternCS__OwnedPartsAssignment_2_1_1)
{ after(grammarAccess.getCollectionPatternCSAccess().getOwnedPartsAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__CollectionPatternCS__Group_2_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionPatternCS__Group_2_2__0__Impl
	rule__CollectionPatternCS__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__Group_2_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getPlusSignPlusSignKeyword_2_2_0()); }

	'++' 

{ after(grammarAccess.getCollectionPatternCSAccess().getPlusSignPlusSignKeyword_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionPatternCS__Group_2_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CollectionPatternCS__Group_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__Group_2_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getRestVariableNameAssignment_2_2_1()); }
(rule__CollectionPatternCS__RestVariableNameAssignment_2_2_1)
{ after(grammarAccess.getCollectionPatternCSAccess().getRestVariableNameAssignment_2_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ShadowPartCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ShadowPartCS__Group__0__Impl
	rule__ShadowPartCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ShadowPartCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShadowPartCSAccess().getReferredPropertyAssignment_0()); }
(rule__ShadowPartCS__ReferredPropertyAssignment_0)
{ after(grammarAccess.getShadowPartCSAccess().getReferredPropertyAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ShadowPartCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ShadowPartCS__Group__1__Impl
	rule__ShadowPartCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ShadowPartCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShadowPartCSAccess().getEqualsSignKeyword_1()); }

	'=' 

{ after(grammarAccess.getShadowPartCSAccess().getEqualsSignKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ShadowPartCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ShadowPartCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ShadowPartCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShadowPartCSAccess().getOwnedInitExpressionAssignment_2()); }
(rule__ShadowPartCS__OwnedInitExpressionAssignment_2)
{ after(grammarAccess.getShadowPartCSAccess().getOwnedInitExpressionAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__PatternExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PatternExpCS__Group__0__Impl
	rule__PatternExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPatternExpCSAccess().getPatternVariableNameAssignment_0()); }
(rule__PatternExpCS__PatternVariableNameAssignment_0)?
{ after(grammarAccess.getPatternExpCSAccess().getPatternVariableNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PatternExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PatternExpCS__Group__1__Impl
	rule__PatternExpCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPatternExpCSAccess().getColonKeyword_1()); }

	':' 

{ after(grammarAccess.getPatternExpCSAccess().getColonKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PatternExpCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PatternExpCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternExpCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPatternExpCSAccess().getOwnedPatternTypeAssignment_2()); }
(rule__PatternExpCS__OwnedPatternTypeAssignment_2)
{ after(grammarAccess.getPatternExpCSAccess().getOwnedPatternTypeAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__LambdaLiteralExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LambdaLiteralExpCS__Group__0__Impl
	rule__LambdaLiteralExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LambdaLiteralExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLambdaLiteralExpCSAccess().getLambdaKeyword_0()); }

	'Lambda' 

{ after(grammarAccess.getLambdaLiteralExpCSAccess().getLambdaKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LambdaLiteralExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LambdaLiteralExpCS__Group__1__Impl
	rule__LambdaLiteralExpCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__LambdaLiteralExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLambdaLiteralExpCSAccess().getLeftCurlyBracketKeyword_1()); }

	'{' 

{ after(grammarAccess.getLambdaLiteralExpCSAccess().getLeftCurlyBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LambdaLiteralExpCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LambdaLiteralExpCS__Group__2__Impl
	rule__LambdaLiteralExpCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__LambdaLiteralExpCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLambdaLiteralExpCSAccess().getOwnedExpressionCSAssignment_2()); }
(rule__LambdaLiteralExpCS__OwnedExpressionCSAssignment_2)
{ after(grammarAccess.getLambdaLiteralExpCSAccess().getOwnedExpressionCSAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LambdaLiteralExpCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LambdaLiteralExpCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LambdaLiteralExpCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLambdaLiteralExpCSAccess().getRightCurlyBracketKeyword_3()); }

	'}' 

{ after(grammarAccess.getLambdaLiteralExpCSAccess().getRightCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__MapLiteralExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapLiteralExpCS__Group__0__Impl
	rule__MapLiteralExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getOwnedTypeAssignment_0()); }
(rule__MapLiteralExpCS__OwnedTypeAssignment_0)
{ after(grammarAccess.getMapLiteralExpCSAccess().getOwnedTypeAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapLiteralExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapLiteralExpCS__Group__1__Impl
	rule__MapLiteralExpCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getLeftCurlyBracketKeyword_1()); }

	'{' 

{ after(grammarAccess.getMapLiteralExpCSAccess().getLeftCurlyBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapLiteralExpCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapLiteralExpCS__Group__2__Impl
	rule__MapLiteralExpCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralExpCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getGroup_2()); }
(rule__MapLiteralExpCS__Group_2__0)?
{ after(grammarAccess.getMapLiteralExpCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapLiteralExpCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapLiteralExpCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralExpCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getRightCurlyBracketKeyword_3()); }

	'}' 

{ after(grammarAccess.getMapLiteralExpCSAccess().getRightCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__MapLiteralExpCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapLiteralExpCS__Group_2__0__Impl
	rule__MapLiteralExpCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralExpCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getOwnedPartsAssignment_2_0()); }
(rule__MapLiteralExpCS__OwnedPartsAssignment_2_0)
{ after(grammarAccess.getMapLiteralExpCSAccess().getOwnedPartsAssignment_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapLiteralExpCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapLiteralExpCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralExpCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getGroup_2_1()); }
(rule__MapLiteralExpCS__Group_2_1__0)*
{ after(grammarAccess.getMapLiteralExpCSAccess().getGroup_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MapLiteralExpCS__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapLiteralExpCS__Group_2_1__0__Impl
	rule__MapLiteralExpCS__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralExpCS__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getCommaKeyword_2_1_0()); }

	',' 

{ after(grammarAccess.getMapLiteralExpCSAccess().getCommaKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapLiteralExpCS__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapLiteralExpCS__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralExpCS__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getOwnedPartsAssignment_2_1_1()); }
(rule__MapLiteralExpCS__OwnedPartsAssignment_2_1_1)
{ after(grammarAccess.getMapLiteralExpCSAccess().getOwnedPartsAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MapLiteralPartCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapLiteralPartCS__Group__0__Impl
	rule__MapLiteralPartCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralPartCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralPartCSAccess().getOwnedKeyAssignment_0()); }
(rule__MapLiteralPartCS__OwnedKeyAssignment_0)
{ after(grammarAccess.getMapLiteralPartCSAccess().getOwnedKeyAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapLiteralPartCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapLiteralPartCS__Group__1__Impl
	rule__MapLiteralPartCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralPartCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralPartCSAccess().getLessThanSignHyphenMinusKeyword_1()); }

	'<-' 

{ after(grammarAccess.getMapLiteralPartCSAccess().getLessThanSignHyphenMinusKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MapLiteralPartCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MapLiteralPartCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralPartCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralPartCSAccess().getOwnedValueAssignment_2()); }
(rule__MapLiteralPartCS__OwnedValueAssignment_2)
{ after(grammarAccess.getMapLiteralPartCSAccess().getOwnedValueAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__TupleLiteralExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralExpCS__Group__0__Impl
	rule__TupleLiteralExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralExpCSAccess().getTupleKeyword_0()); }

	'Tuple' 

{ after(grammarAccess.getTupleLiteralExpCSAccess().getTupleKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralExpCS__Group__1__Impl
	rule__TupleLiteralExpCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralExpCSAccess().getLeftCurlyBracketKeyword_1()); }

	'{' 

{ after(grammarAccess.getTupleLiteralExpCSAccess().getLeftCurlyBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralExpCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralExpCS__Group__2__Impl
	rule__TupleLiteralExpCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExpCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralExpCSAccess().getOwnedPartsAssignment_2()); }
(rule__TupleLiteralExpCS__OwnedPartsAssignment_2)
{ after(grammarAccess.getTupleLiteralExpCSAccess().getOwnedPartsAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralExpCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralExpCS__Group__3__Impl
	rule__TupleLiteralExpCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExpCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralExpCSAccess().getGroup_3()); }
(rule__TupleLiteralExpCS__Group_3__0)*
{ after(grammarAccess.getTupleLiteralExpCSAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralExpCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralExpCS__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExpCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralExpCSAccess().getRightCurlyBracketKeyword_4()); }

	'}' 

{ after(grammarAccess.getTupleLiteralExpCSAccess().getRightCurlyBracketKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__TupleLiteralExpCS__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralExpCS__Group_3__0__Impl
	rule__TupleLiteralExpCS__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExpCS__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralExpCSAccess().getCommaKeyword_3_0()); }

	',' 

{ after(grammarAccess.getTupleLiteralExpCSAccess().getCommaKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralExpCS__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralExpCS__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExpCS__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralExpCSAccess().getOwnedPartsAssignment_3_1()); }
(rule__TupleLiteralExpCS__OwnedPartsAssignment_3_1)
{ after(grammarAccess.getTupleLiteralExpCSAccess().getOwnedPartsAssignment_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TupleLiteralPartCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralPartCS__Group__0__Impl
	rule__TupleLiteralPartCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPartCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralPartCSAccess().getNameAssignment_0()); }
(rule__TupleLiteralPartCS__NameAssignment_0)
{ after(grammarAccess.getTupleLiteralPartCSAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralPartCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralPartCS__Group__1__Impl
	rule__TupleLiteralPartCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPartCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralPartCSAccess().getGroup_1()); }
(rule__TupleLiteralPartCS__Group_1__0)?
{ after(grammarAccess.getTupleLiteralPartCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralPartCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralPartCS__Group__2__Impl
	rule__TupleLiteralPartCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPartCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralPartCSAccess().getEqualsSignKeyword_2()); }

	'=' 

{ after(grammarAccess.getTupleLiteralPartCSAccess().getEqualsSignKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralPartCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralPartCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPartCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralPartCSAccess().getOwnedInitExpressionAssignment_3()); }
(rule__TupleLiteralPartCS__OwnedInitExpressionAssignment_3)
{ after(grammarAccess.getTupleLiteralPartCSAccess().getOwnedInitExpressionAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__TupleLiteralPartCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralPartCS__Group_1__0__Impl
	rule__TupleLiteralPartCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPartCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralPartCSAccess().getColonKeyword_1_0()); }

	':' 

{ after(grammarAccess.getTupleLiteralPartCSAccess().getColonKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralPartCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TupleLiteralPartCS__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPartCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralPartCSAccess().getOwnedTypeAssignment_1_1()); }
(rule__TupleLiteralPartCS__OwnedTypeAssignment_1_1)
{ after(grammarAccess.getTupleLiteralPartCSAccess().getOwnedTypeAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__UnlimitedNaturalLiteralExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__UnlimitedNaturalLiteralExpCS__Group__0__Impl
	rule__UnlimitedNaturalLiteralExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnlimitedNaturalLiteralExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnlimitedNaturalLiteralExpCSAccess().getUnlimitedNaturalLiteralExpCSAction_0()); }
(

)
{ after(grammarAccess.getUnlimitedNaturalLiteralExpCSAccess().getUnlimitedNaturalLiteralExpCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__UnlimitedNaturalLiteralExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__UnlimitedNaturalLiteralExpCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnlimitedNaturalLiteralExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnlimitedNaturalLiteralExpCSAccess().getAsteriskKeyword_1()); }

	'*' 

{ after(grammarAccess.getUnlimitedNaturalLiteralExpCSAccess().getAsteriskKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__InvalidLiteralExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InvalidLiteralExpCS__Group__0__Impl
	rule__InvalidLiteralExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InvalidLiteralExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInvalidLiteralExpCSAccess().getInvalidLiteralExpCSAction_0()); }
(

)
{ after(grammarAccess.getInvalidLiteralExpCSAccess().getInvalidLiteralExpCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InvalidLiteralExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InvalidLiteralExpCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InvalidLiteralExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInvalidLiteralExpCSAccess().getInvalidKeyword_1()); }

	'invalid' 

{ after(grammarAccess.getInvalidLiteralExpCSAccess().getInvalidKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__NullLiteralExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NullLiteralExpCS__Group__0__Impl
	rule__NullLiteralExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NullLiteralExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNullLiteralExpCSAccess().getNullLiteralExpCSAction_0()); }
(

)
{ after(grammarAccess.getNullLiteralExpCSAccess().getNullLiteralExpCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NullLiteralExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NullLiteralExpCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NullLiteralExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNullLiteralExpCSAccess().getNullKeyword_1()); }

	'null' 

{ after(grammarAccess.getNullLiteralExpCSAccess().getNullKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TypeLiteralWithMultiplicityCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeLiteralWithMultiplicityCS__Group__0__Impl
	rule__TypeLiteralWithMultiplicityCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeLiteralWithMultiplicityCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeLiteralWithMultiplicityCSAccess().getTypeLiteralCSParserRuleCall_0()); }
	ruleTypeLiteralCS
{ after(grammarAccess.getTypeLiteralWithMultiplicityCSAccess().getTypeLiteralCSParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypeLiteralWithMultiplicityCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeLiteralWithMultiplicityCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeLiteralWithMultiplicityCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeLiteralWithMultiplicityCSAccess().getOwnedMultiplicityAssignment_1()); }
(rule__TypeLiteralWithMultiplicityCS__OwnedMultiplicityAssignment_1)?
{ after(grammarAccess.getTypeLiteralWithMultiplicityCSAccess().getOwnedMultiplicityAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TypeNameExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeNameExpCS__Group__0__Impl
	rule__TypeNameExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeNameExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeNameExpCSAccess().getOwnedPathNameAssignment_0()); }
(rule__TypeNameExpCS__OwnedPathNameAssignment_0)
{ after(grammarAccess.getTypeNameExpCSAccess().getOwnedPathNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypeNameExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeNameExpCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeNameExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeNameExpCSAccess().getGroup_1()); }
(rule__TypeNameExpCS__Group_1__0)?
{ after(grammarAccess.getTypeNameExpCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TypeNameExpCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeNameExpCS__Group_1__0__Impl
	rule__TypeNameExpCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeNameExpCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeNameExpCSAccess().getOwnedCurlyBracketedClauseAssignment_1_0()); }
(rule__TypeNameExpCS__OwnedCurlyBracketedClauseAssignment_1_0)
{ after(grammarAccess.getTypeNameExpCSAccess().getOwnedCurlyBracketedClauseAssignment_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypeNameExpCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeNameExpCS__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeNameExpCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeNameExpCSAccess().getGroup_1_1()); }
(rule__TypeNameExpCS__Group_1_1__0)?
{ after(grammarAccess.getTypeNameExpCSAccess().getGroup_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TypeNameExpCS__Group_1_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeNameExpCS__Group_1_1__0__Impl
	rule__TypeNameExpCS__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeNameExpCS__Group_1_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeNameExpCSAccess().getLeftCurlyBracketKeyword_1_1_0()); }

	'{' 

{ after(grammarAccess.getTypeNameExpCSAccess().getLeftCurlyBracketKeyword_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypeNameExpCS__Group_1_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeNameExpCS__Group_1_1__1__Impl
	rule__TypeNameExpCS__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeNameExpCS__Group_1_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeNameExpCSAccess().getOwnedPatternGuardAssignment_1_1_1()); }
(rule__TypeNameExpCS__OwnedPatternGuardAssignment_1_1_1)
{ after(grammarAccess.getTypeNameExpCSAccess().getOwnedPatternGuardAssignment_1_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypeNameExpCS__Group_1_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeNameExpCS__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeNameExpCS__Group_1_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeNameExpCSAccess().getRightCurlyBracketKeyword_1_1_2()); }

	'}' 

{ after(grammarAccess.getTypeNameExpCSAccess().getRightCurlyBracketKeyword_1_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__TypeExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeExpCS__Group__0__Impl
	rule__TypeExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeExpCSAccess().getAlternatives_0()); }
(rule__TypeExpCS__Alternatives_0)
{ after(grammarAccess.getTypeExpCSAccess().getAlternatives_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypeExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeExpCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeExpCSAccess().getOwnedMultiplicityAssignment_1()); }
(rule__TypeExpCS__OwnedMultiplicityAssignment_1)?
{ after(grammarAccess.getTypeExpCSAccess().getOwnedMultiplicityAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ExpCS__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ExpCS__Group_0__0__Impl
	rule__ExpCS__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ExpCS__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExpCSAccess().getPrefixedPrimaryExpCSParserRuleCall_0_0()); }
	rulePrefixedPrimaryExpCS
{ after(grammarAccess.getExpCSAccess().getPrefixedPrimaryExpCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ExpCS__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ExpCS__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ExpCS__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExpCSAccess().getGroup_0_1()); }
(rule__ExpCS__Group_0_1__0)?
{ after(grammarAccess.getExpCSAccess().getGroup_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ExpCS__Group_0_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ExpCS__Group_0_1__0__Impl
	rule__ExpCS__Group_0_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ExpCS__Group_0_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExpCSAccess().getInfixExpCSOwnedLeftAction_0_1_0()); }
(

)
{ after(grammarAccess.getExpCSAccess().getInfixExpCSOwnedLeftAction_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ExpCS__Group_0_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ExpCS__Group_0_1__1__Impl
	rule__ExpCS__Group_0_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ExpCS__Group_0_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExpCSAccess().getNameAssignment_0_1_1()); }
(rule__ExpCS__NameAssignment_0_1_1)
{ after(grammarAccess.getExpCSAccess().getNameAssignment_0_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ExpCS__Group_0_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ExpCS__Group_0_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ExpCS__Group_0_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExpCSAccess().getOwnedRightAssignment_0_1_2()); }
(rule__ExpCS__OwnedRightAssignment_0_1_2)
{ after(grammarAccess.getExpCSAccess().getOwnedRightAssignment_0_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__PrefixedLetExpCS__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefixedLetExpCS__Group_0__0__Impl
	rule__PrefixedLetExpCS__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedLetExpCS__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedLetExpCSAccess().getPrefixExpCSAction_0_0()); }
(

)
{ after(grammarAccess.getPrefixedLetExpCSAccess().getPrefixExpCSAction_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefixedLetExpCS__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefixedLetExpCS__Group_0__1__Impl
	rule__PrefixedLetExpCS__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedLetExpCS__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedLetExpCSAccess().getNameAssignment_0_1()); }
(rule__PrefixedLetExpCS__NameAssignment_0_1)
{ after(grammarAccess.getPrefixedLetExpCSAccess().getNameAssignment_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefixedLetExpCS__Group_0__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefixedLetExpCS__Group_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedLetExpCS__Group_0__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedLetExpCSAccess().getOwnedRightAssignment_0_2()); }
(rule__PrefixedLetExpCS__OwnedRightAssignment_0_2)
{ after(grammarAccess.getPrefixedLetExpCSAccess().getOwnedRightAssignment_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__PrefixedPrimaryExpCS__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefixedPrimaryExpCS__Group_0__0__Impl
	rule__PrefixedPrimaryExpCS__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedPrimaryExpCS__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedPrimaryExpCSAccess().getPrefixExpCSAction_0_0()); }
(

)
{ after(grammarAccess.getPrefixedPrimaryExpCSAccess().getPrefixExpCSAction_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefixedPrimaryExpCS__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefixedPrimaryExpCS__Group_0__1__Impl
	rule__PrefixedPrimaryExpCS__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedPrimaryExpCS__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedPrimaryExpCSAccess().getNameAssignment_0_1()); }
(rule__PrefixedPrimaryExpCS__NameAssignment_0_1)
{ after(grammarAccess.getPrefixedPrimaryExpCSAccess().getNameAssignment_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefixedPrimaryExpCS__Group_0__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefixedPrimaryExpCS__Group_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedPrimaryExpCS__Group_0__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedPrimaryExpCSAccess().getOwnedRightAssignment_0_2()); }
(rule__PrefixedPrimaryExpCS__OwnedRightAssignment_0_2)
{ after(grammarAccess.getPrefixedPrimaryExpCSAccess().getOwnedRightAssignment_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__NameExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NameExpCS__Group__0__Impl
	rule__NameExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getOwnedPathNameAssignment_0()); }
(rule__NameExpCS__OwnedPathNameAssignment_0)
{ after(grammarAccess.getNameExpCSAccess().getOwnedPathNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NameExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NameExpCS__Group__1__Impl
	rule__NameExpCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getOwnedSquareBracketedClausesAssignment_1()); }
(rule__NameExpCS__OwnedSquareBracketedClausesAssignment_1)*
{ after(grammarAccess.getNameExpCSAccess().getOwnedSquareBracketedClausesAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NameExpCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NameExpCS__Group__2__Impl
	rule__NameExpCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getOwnedRoundBracketedClauseAssignment_2()); }
(rule__NameExpCS__OwnedRoundBracketedClauseAssignment_2)?
{ after(grammarAccess.getNameExpCSAccess().getOwnedRoundBracketedClauseAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NameExpCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NameExpCS__Group__3__Impl
	rule__NameExpCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getOwnedCurlyBracketedClauseAssignment_3()); }
(rule__NameExpCS__OwnedCurlyBracketedClauseAssignment_3)?
{ after(grammarAccess.getNameExpCSAccess().getOwnedCurlyBracketedClauseAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NameExpCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NameExpCS__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getGroup_4()); }
(rule__NameExpCS__Group_4__0)?
{ after(grammarAccess.getNameExpCSAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__NameExpCS__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NameExpCS__Group_4__0__Impl
	rule__NameExpCS__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getIsPreAssignment_4_0()); }
(rule__NameExpCS__IsPreAssignment_4_0)
{ after(grammarAccess.getNameExpCSAccess().getIsPreAssignment_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NameExpCS__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NameExpCS__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getPreKeyword_4_1()); }

	'pre' 

{ after(grammarAccess.getNameExpCSAccess().getPreKeyword_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__CurlyBracketedClauseCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CurlyBracketedClauseCS__Group__0__Impl
	rule__CurlyBracketedClauseCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getCurlyBracketedClauseCSAction_0()); }
(

)
{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getCurlyBracketedClauseCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CurlyBracketedClauseCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CurlyBracketedClauseCS__Group__1__Impl
	rule__CurlyBracketedClauseCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getLeftCurlyBracketKeyword_1()); }

	'{' 

{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getLeftCurlyBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CurlyBracketedClauseCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CurlyBracketedClauseCS__Group__2__Impl
	rule__CurlyBracketedClauseCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getAlternatives_2()); }
(rule__CurlyBracketedClauseCS__Alternatives_2)
{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getAlternatives_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CurlyBracketedClauseCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CurlyBracketedClauseCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getRightCurlyBracketKeyword_3()); }

	'}' 

{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getRightCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__CurlyBracketedClauseCS__Group_2_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CurlyBracketedClauseCS__Group_2_0__0__Impl
	rule__CurlyBracketedClauseCS__Group_2_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__Group_2_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getOwnedPartsAssignment_2_0_0()); }
(rule__CurlyBracketedClauseCS__OwnedPartsAssignment_2_0_0)
{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getOwnedPartsAssignment_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CurlyBracketedClauseCS__Group_2_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CurlyBracketedClauseCS__Group_2_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__Group_2_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getGroup_2_0_1()); }
(rule__CurlyBracketedClauseCS__Group_2_0_1__0)*
{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getGroup_2_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__CurlyBracketedClauseCS__Group_2_0_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CurlyBracketedClauseCS__Group_2_0_1__0__Impl
	rule__CurlyBracketedClauseCS__Group_2_0_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__Group_2_0_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getCommaKeyword_2_0_1_0()); }

	',' 

{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getCommaKeyword_2_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CurlyBracketedClauseCS__Group_2_0_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CurlyBracketedClauseCS__Group_2_0_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__Group_2_0_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getOwnedPartsAssignment_2_0_1_1()); }
(rule__CurlyBracketedClauseCS__OwnedPartsAssignment_2_0_1_1)
{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getOwnedPartsAssignment_2_0_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__RoundBracketedClauseCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group__0__Impl
	rule__RoundBracketedClauseCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getRoundBracketedClauseCSAction_0()); }
(

)
{ after(grammarAccess.getRoundBracketedClauseCSAccess().getRoundBracketedClauseCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketedClauseCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group__1__Impl
	rule__RoundBracketedClauseCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getLeftParenthesisKeyword_1()); }

	'(' 

{ after(grammarAccess.getRoundBracketedClauseCSAccess().getLeftParenthesisKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketedClauseCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group__2__Impl
	rule__RoundBracketedClauseCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getGroup_2()); }
(rule__RoundBracketedClauseCS__Group_2__0)?
{ after(grammarAccess.getRoundBracketedClauseCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketedClauseCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getRightParenthesisKeyword_3()); }

	')' 

{ after(grammarAccess.getRoundBracketedClauseCSAccess().getRightParenthesisKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__RoundBracketedClauseCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group_2__0__Impl
	rule__RoundBracketedClauseCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_0()); }
(rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_0)
{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketedClauseCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group_2__1__Impl
	rule__RoundBracketedClauseCS__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_1()); }
(rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_1)*
{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketedClauseCS__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group_2__2__Impl
	rule__RoundBracketedClauseCS__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getGroup_2_2()); }
(rule__RoundBracketedClauseCS__Group_2_2__0)?
{ after(grammarAccess.getRoundBracketedClauseCSAccess().getGroup_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketedClauseCS__Group_2__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group_2__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getGroup_2_3()); }
(rule__RoundBracketedClauseCS__Group_2_3__0)*
{ after(grammarAccess.getRoundBracketedClauseCSAccess().getGroup_2_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__RoundBracketedClauseCS__Group_2_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group_2_2__0__Impl
	rule__RoundBracketedClauseCS__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group_2_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_2_0()); }
(rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_2_0)
{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketedClauseCS__Group_2_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group_2_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_2_1()); }
(rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_2_1)*
{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__RoundBracketedClauseCS__Group_2_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group_2_3__0__Impl
	rule__RoundBracketedClauseCS__Group_2_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group_2_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_3_0()); }
(rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_3_0)
{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketedClauseCS__Group_2_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RoundBracketedClauseCS__Group_2_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__Group_2_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_3_1()); }
(rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_3_1)*
{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsAssignment_2_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__SquareBracketedClauseCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SquareBracketedClauseCS__Group__0__Impl
	rule__SquareBracketedClauseCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketedClauseCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSquareBracketedClauseCSAccess().getLeftSquareBracketKeyword_0()); }

	'[' 

{ after(grammarAccess.getSquareBracketedClauseCSAccess().getLeftSquareBracketKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SquareBracketedClauseCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SquareBracketedClauseCS__Group__1__Impl
	rule__SquareBracketedClauseCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketedClauseCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSquareBracketedClauseCSAccess().getOwnedTermsAssignment_1()); }
(rule__SquareBracketedClauseCS__OwnedTermsAssignment_1)
{ after(grammarAccess.getSquareBracketedClauseCSAccess().getOwnedTermsAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SquareBracketedClauseCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SquareBracketedClauseCS__Group__2__Impl
	rule__SquareBracketedClauseCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketedClauseCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSquareBracketedClauseCSAccess().getGroup_2()); }
(rule__SquareBracketedClauseCS__Group_2__0)*
{ after(grammarAccess.getSquareBracketedClauseCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SquareBracketedClauseCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SquareBracketedClauseCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketedClauseCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSquareBracketedClauseCSAccess().getRightSquareBracketKeyword_3()); }

	']' 

{ after(grammarAccess.getSquareBracketedClauseCSAccess().getRightSquareBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__SquareBracketedClauseCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SquareBracketedClauseCS__Group_2__0__Impl
	rule__SquareBracketedClauseCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketedClauseCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSquareBracketedClauseCSAccess().getCommaKeyword_2_0()); }

	',' 

{ after(grammarAccess.getSquareBracketedClauseCSAccess().getCommaKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SquareBracketedClauseCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SquareBracketedClauseCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketedClauseCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSquareBracketedClauseCSAccess().getOwnedTermsAssignment_2_1()); }
(rule__SquareBracketedClauseCS__OwnedTermsAssignment_2_1)
{ after(grammarAccess.getSquareBracketedClauseCSAccess().getOwnedTermsAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__NavigatingArgCS__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingArgCS__Group_0__0__Impl
	rule__NavigatingArgCS__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getOwnedNameExpressionAssignment_0_0()); }
(rule__NavigatingArgCS__OwnedNameExpressionAssignment_0_0)
{ after(grammarAccess.getNavigatingArgCSAccess().getOwnedNameExpressionAssignment_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingArgCS__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingArgCS__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getAlternatives_0_1()); }
(rule__NavigatingArgCS__Alternatives_0_1)?
{ after(grammarAccess.getNavigatingArgCSAccess().getAlternatives_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__NavigatingArgCS__Group_0_1_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingArgCS__Group_0_1_0__0__Impl
	rule__NavigatingArgCS__Group_0_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Group_0_1_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getColonKeyword_0_1_0_0()); }

	':' 

{ after(grammarAccess.getNavigatingArgCSAccess().getColonKeyword_0_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingArgCS__Group_0_1_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingArgCS__Group_0_1_0__1__Impl
	rule__NavigatingArgCS__Group_0_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Group_0_1_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getOwnedTypeAssignment_0_1_0_1()); }
(rule__NavigatingArgCS__OwnedTypeAssignment_0_1_0_1)
{ after(grammarAccess.getNavigatingArgCSAccess().getOwnedTypeAssignment_0_1_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingArgCS__Group_0_1_0__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingArgCS__Group_0_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Group_0_1_0__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getGroup_0_1_0_2()); }
(rule__NavigatingArgCS__Group_0_1_0_2__0)?
{ after(grammarAccess.getNavigatingArgCSAccess().getGroup_0_1_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__NavigatingArgCS__Group_0_1_0_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingArgCS__Group_0_1_0_2__0__Impl
	rule__NavigatingArgCS__Group_0_1_0_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Group_0_1_0_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getEqualsSignKeyword_0_1_0_2_0()); }

	'=' 

{ after(grammarAccess.getNavigatingArgCSAccess().getEqualsSignKeyword_0_1_0_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingArgCS__Group_0_1_0_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingArgCS__Group_0_1_0_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Group_0_1_0_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getOwnedInitExpressionAssignment_0_1_0_2_1()); }
(rule__NavigatingArgCS__OwnedInitExpressionAssignment_0_1_0_2_1)
{ after(grammarAccess.getNavigatingArgCSAccess().getOwnedInitExpressionAssignment_0_1_0_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__NavigatingArgCS__Group_0_1_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingArgCS__Group_0_1_1__0__Impl
	rule__NavigatingArgCS__Group_0_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Group_0_1_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getInKeyword_0_1_1_0()); }

	'in' 

{ after(grammarAccess.getNavigatingArgCSAccess().getInKeyword_0_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingArgCS__Group_0_1_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingArgCS__Group_0_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Group_0_1_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getOwnedInitExpressionAssignment_0_1_1_1()); }
(rule__NavigatingArgCS__OwnedInitExpressionAssignment_0_1_1_1)
{ after(grammarAccess.getNavigatingArgCSAccess().getOwnedInitExpressionAssignment_0_1_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__NavigatingArgCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingArgCS__Group_1__0__Impl
	rule__NavigatingArgCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getColonKeyword_1_0()); }

	':' 

{ after(grammarAccess.getNavigatingArgCSAccess().getColonKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingArgCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingArgCS__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getOwnedTypeAssignment_1_1()); }
(rule__NavigatingArgCS__OwnedTypeAssignment_1_1)
{ after(grammarAccess.getNavigatingArgCSAccess().getOwnedTypeAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__NavigatingBarArgCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingBarArgCS__Group__0__Impl
	rule__NavigatingBarArgCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getPrefixAssignment_0()); }
(rule__NavigatingBarArgCS__PrefixAssignment_0)
{ after(grammarAccess.getNavigatingBarArgCSAccess().getPrefixAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingBarArgCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingBarArgCS__Group__1__Impl
	rule__NavigatingBarArgCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getOwnedNameExpressionAssignment_1()); }
(rule__NavigatingBarArgCS__OwnedNameExpressionAssignment_1)
{ after(grammarAccess.getNavigatingBarArgCSAccess().getOwnedNameExpressionAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingBarArgCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingBarArgCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getGroup_2()); }
(rule__NavigatingBarArgCS__Group_2__0)?
{ after(grammarAccess.getNavigatingBarArgCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__NavigatingBarArgCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingBarArgCS__Group_2__0__Impl
	rule__NavigatingBarArgCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getColonKeyword_2_0()); }

	':' 

{ after(grammarAccess.getNavigatingBarArgCSAccess().getColonKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingBarArgCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingBarArgCS__Group_2__1__Impl
	rule__NavigatingBarArgCS__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getOwnedTypeAssignment_2_1()); }
(rule__NavigatingBarArgCS__OwnedTypeAssignment_2_1)
{ after(grammarAccess.getNavigatingBarArgCSAccess().getOwnedTypeAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingBarArgCS__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingBarArgCS__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getGroup_2_2()); }
(rule__NavigatingBarArgCS__Group_2_2__0)?
{ after(grammarAccess.getNavigatingBarArgCSAccess().getGroup_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__NavigatingBarArgCS__Group_2_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingBarArgCS__Group_2_2__0__Impl
	rule__NavigatingBarArgCS__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__Group_2_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getEqualsSignKeyword_2_2_0()); }

	'=' 

{ after(grammarAccess.getNavigatingBarArgCSAccess().getEqualsSignKeyword_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingBarArgCS__Group_2_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingBarArgCS__Group_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__Group_2_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getOwnedInitExpressionAssignment_2_2_1()); }
(rule__NavigatingBarArgCS__OwnedInitExpressionAssignment_2_2_1)
{ after(grammarAccess.getNavigatingBarArgCSAccess().getOwnedInitExpressionAssignment_2_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__NavigatingCommaArgCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingCommaArgCS__Group__0__Impl
	rule__NavigatingCommaArgCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getPrefixAssignment_0()); }
(rule__NavigatingCommaArgCS__PrefixAssignment_0)
{ after(grammarAccess.getNavigatingCommaArgCSAccess().getPrefixAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingCommaArgCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingCommaArgCS__Group__1__Impl
	rule__NavigatingCommaArgCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedNameExpressionAssignment_1()); }
(rule__NavigatingCommaArgCS__OwnedNameExpressionAssignment_1)
{ after(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedNameExpressionAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingCommaArgCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingCommaArgCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getAlternatives_2()); }
(rule__NavigatingCommaArgCS__Alternatives_2)?
{ after(grammarAccess.getNavigatingCommaArgCSAccess().getAlternatives_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__NavigatingCommaArgCS__Group_2_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingCommaArgCS__Group_2_0__0__Impl
	rule__NavigatingCommaArgCS__Group_2_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__Group_2_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getColonKeyword_2_0_0()); }

	':' 

{ after(grammarAccess.getNavigatingCommaArgCSAccess().getColonKeyword_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingCommaArgCS__Group_2_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingCommaArgCS__Group_2_0__1__Impl
	rule__NavigatingCommaArgCS__Group_2_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__Group_2_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedTypeAssignment_2_0_1()); }
(rule__NavigatingCommaArgCS__OwnedTypeAssignment_2_0_1)
{ after(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedTypeAssignment_2_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingCommaArgCS__Group_2_0__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingCommaArgCS__Group_2_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__Group_2_0__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getGroup_2_0_2()); }
(rule__NavigatingCommaArgCS__Group_2_0_2__0)?
{ after(grammarAccess.getNavigatingCommaArgCSAccess().getGroup_2_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__NavigatingCommaArgCS__Group_2_0_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingCommaArgCS__Group_2_0_2__0__Impl
	rule__NavigatingCommaArgCS__Group_2_0_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__Group_2_0_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getEqualsSignKeyword_2_0_2_0()); }

	'=' 

{ after(grammarAccess.getNavigatingCommaArgCSAccess().getEqualsSignKeyword_2_0_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingCommaArgCS__Group_2_0_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingCommaArgCS__Group_2_0_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__Group_2_0_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedInitExpressionAssignment_2_0_2_1()); }
(rule__NavigatingCommaArgCS__OwnedInitExpressionAssignment_2_0_2_1)
{ after(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedInitExpressionAssignment_2_0_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__NavigatingCommaArgCS__Group_2_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingCommaArgCS__Group_2_1__0__Impl
	rule__NavigatingCommaArgCS__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__Group_2_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getInKeyword_2_1_0()); }

	'in' 

{ after(grammarAccess.getNavigatingCommaArgCSAccess().getInKeyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingCommaArgCS__Group_2_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingCommaArgCS__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__Group_2_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedInitExpressionAssignment_2_1_1()); }
(rule__NavigatingCommaArgCS__OwnedInitExpressionAssignment_2_1_1)
{ after(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedInitExpressionAssignment_2_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__NavigatingSemiArgCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingSemiArgCS__Group__0__Impl
	rule__NavigatingSemiArgCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getPrefixAssignment_0()); }
(rule__NavigatingSemiArgCS__PrefixAssignment_0)
{ after(grammarAccess.getNavigatingSemiArgCSAccess().getPrefixAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingSemiArgCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingSemiArgCS__Group__1__Impl
	rule__NavigatingSemiArgCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedNameExpressionAssignment_1()); }
(rule__NavigatingSemiArgCS__OwnedNameExpressionAssignment_1)
{ after(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedNameExpressionAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingSemiArgCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingSemiArgCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getGroup_2()); }
(rule__NavigatingSemiArgCS__Group_2__0)?
{ after(grammarAccess.getNavigatingSemiArgCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__NavigatingSemiArgCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingSemiArgCS__Group_2__0__Impl
	rule__NavigatingSemiArgCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getColonKeyword_2_0()); }

	':' 

{ after(grammarAccess.getNavigatingSemiArgCSAccess().getColonKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingSemiArgCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingSemiArgCS__Group_2__1__Impl
	rule__NavigatingSemiArgCS__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedTypeAssignment_2_1()); }
(rule__NavigatingSemiArgCS__OwnedTypeAssignment_2_1)
{ after(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedTypeAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingSemiArgCS__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingSemiArgCS__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getGroup_2_2()); }
(rule__NavigatingSemiArgCS__Group_2_2__0)?
{ after(grammarAccess.getNavigatingSemiArgCSAccess().getGroup_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__NavigatingSemiArgCS__Group_2_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingSemiArgCS__Group_2_2__0__Impl
	rule__NavigatingSemiArgCS__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__Group_2_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getEqualsSignKeyword_2_2_0()); }

	'=' 

{ after(grammarAccess.getNavigatingSemiArgCSAccess().getEqualsSignKeyword_2_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingSemiArgCS__Group_2_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NavigatingSemiArgCS__Group_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__Group_2_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedInitExpressionAssignment_2_2_1()); }
(rule__NavigatingSemiArgCS__OwnedInitExpressionAssignment_2_2_1)
{ after(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedInitExpressionAssignment_2_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__IfExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IfExpCS__Group__0__Impl
	rule__IfExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getIfKeyword_0()); }

	'if' 

{ after(grammarAccess.getIfExpCSAccess().getIfKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IfExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IfExpCS__Group__1__Impl
	rule__IfExpCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getOwnedConditionAssignment_1()); }
(rule__IfExpCS__OwnedConditionAssignment_1)
{ after(grammarAccess.getIfExpCSAccess().getOwnedConditionAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IfExpCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IfExpCS__Group__2__Impl
	rule__IfExpCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getThenKeyword_2()); }

	'then' 

{ after(grammarAccess.getIfExpCSAccess().getThenKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IfExpCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IfExpCS__Group__3__Impl
	rule__IfExpCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getOwnedThenExpressionAssignment_3()); }
(rule__IfExpCS__OwnedThenExpressionAssignment_3)
{ after(grammarAccess.getIfExpCSAccess().getOwnedThenExpressionAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IfExpCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IfExpCS__Group__4__Impl
	rule__IfExpCS__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getOwnedIfThenExpressionsAssignment_4()); }
(rule__IfExpCS__OwnedIfThenExpressionsAssignment_4)*
{ after(grammarAccess.getIfExpCSAccess().getOwnedIfThenExpressionsAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IfExpCS__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IfExpCS__Group__5__Impl
	rule__IfExpCS__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getElseKeyword_5()); }

	'else' 

{ after(grammarAccess.getIfExpCSAccess().getElseKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IfExpCS__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IfExpCS__Group__6__Impl
	rule__IfExpCS__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getOwnedElseExpressionAssignment_6()); }
(rule__IfExpCS__OwnedElseExpressionAssignment_6)
{ after(grammarAccess.getIfExpCSAccess().getOwnedElseExpressionAssignment_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__IfExpCS__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__IfExpCS__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getEndifKeyword_7()); }

	'endif' 

{ after(grammarAccess.getIfExpCSAccess().getEndifKeyword_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


















rule__ElseIfThenExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ElseIfThenExpCS__Group__0__Impl
	rule__ElseIfThenExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ElseIfThenExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getElseIfThenExpCSAccess().getElseifKeyword_0()); }

	'elseif' 

{ after(grammarAccess.getElseIfThenExpCSAccess().getElseifKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ElseIfThenExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ElseIfThenExpCS__Group__1__Impl
	rule__ElseIfThenExpCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ElseIfThenExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getElseIfThenExpCSAccess().getOwnedConditionAssignment_1()); }
(rule__ElseIfThenExpCS__OwnedConditionAssignment_1)
{ after(grammarAccess.getElseIfThenExpCSAccess().getOwnedConditionAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ElseIfThenExpCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ElseIfThenExpCS__Group__2__Impl
	rule__ElseIfThenExpCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ElseIfThenExpCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getElseIfThenExpCSAccess().getThenKeyword_2()); }

	'then' 

{ after(grammarAccess.getElseIfThenExpCSAccess().getThenKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ElseIfThenExpCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ElseIfThenExpCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ElseIfThenExpCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getElseIfThenExpCSAccess().getOwnedThenExpressionAssignment_3()); }
(rule__ElseIfThenExpCS__OwnedThenExpressionAssignment_3)
{ after(grammarAccess.getElseIfThenExpCSAccess().getOwnedThenExpressionAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__LetExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetExpCS__Group__0__Impl
	rule__LetExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetExpCSAccess().getLetKeyword_0()); }

	'let' 

{ after(grammarAccess.getLetExpCSAccess().getLetKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LetExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetExpCS__Group__1__Impl
	rule__LetExpCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetExpCSAccess().getOwnedVariablesAssignment_1()); }
(rule__LetExpCS__OwnedVariablesAssignment_1)
{ after(grammarAccess.getLetExpCSAccess().getOwnedVariablesAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LetExpCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetExpCS__Group__2__Impl
	rule__LetExpCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExpCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetExpCSAccess().getGroup_2()); }
(rule__LetExpCS__Group_2__0)*
{ after(grammarAccess.getLetExpCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LetExpCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetExpCS__Group__3__Impl
	rule__LetExpCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExpCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetExpCSAccess().getInKeyword_3()); }

	'in' 

{ after(grammarAccess.getLetExpCSAccess().getInKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LetExpCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetExpCS__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExpCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetExpCSAccess().getOwnedInExpressionAssignment_4()); }
(rule__LetExpCS__OwnedInExpressionAssignment_4)
{ after(grammarAccess.getLetExpCSAccess().getOwnedInExpressionAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__LetExpCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetExpCS__Group_2__0__Impl
	rule__LetExpCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExpCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetExpCSAccess().getCommaKeyword_2_0()); }

	',' 

{ after(grammarAccess.getLetExpCSAccess().getCommaKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LetExpCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetExpCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExpCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetExpCSAccess().getOwnedVariablesAssignment_2_1()); }
(rule__LetExpCS__OwnedVariablesAssignment_2_1)
{ after(grammarAccess.getLetExpCSAccess().getOwnedVariablesAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__LetVariableCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetVariableCS__Group__0__Impl
	rule__LetVariableCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariableCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetVariableCSAccess().getNameAssignment_0()); }
(rule__LetVariableCS__NameAssignment_0)
{ after(grammarAccess.getLetVariableCSAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LetVariableCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetVariableCS__Group__1__Impl
	rule__LetVariableCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariableCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetVariableCSAccess().getOwnedRoundBracketedClauseAssignment_1()); }
(rule__LetVariableCS__OwnedRoundBracketedClauseAssignment_1)?
{ after(grammarAccess.getLetVariableCSAccess().getOwnedRoundBracketedClauseAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LetVariableCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetVariableCS__Group__2__Impl
	rule__LetVariableCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariableCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetVariableCSAccess().getGroup_2()); }
(rule__LetVariableCS__Group_2__0)?
{ after(grammarAccess.getLetVariableCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LetVariableCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetVariableCS__Group__3__Impl
	rule__LetVariableCS__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariableCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetVariableCSAccess().getEqualsSignKeyword_3()); }

	'=' 

{ after(grammarAccess.getLetVariableCSAccess().getEqualsSignKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LetVariableCS__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetVariableCS__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariableCS__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetVariableCSAccess().getOwnedInitExpressionAssignment_4()); }
(rule__LetVariableCS__OwnedInitExpressionAssignment_4)
{ after(grammarAccess.getLetVariableCSAccess().getOwnedInitExpressionAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__LetVariableCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetVariableCS__Group_2__0__Impl
	rule__LetVariableCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariableCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetVariableCSAccess().getColonKeyword_2_0()); }

	':' 

{ after(grammarAccess.getLetVariableCSAccess().getColonKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__LetVariableCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__LetVariableCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariableCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetVariableCSAccess().getOwnedTypeAssignment_2_1()); }
(rule__LetVariableCS__OwnedTypeAssignment_2_1)
{ after(grammarAccess.getLetVariableCSAccess().getOwnedTypeAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__NestedExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NestedExpCS__Group__0__Impl
	rule__NestedExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NestedExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNestedExpCSAccess().getLeftParenthesisKeyword_0()); }

	'(' 

{ after(grammarAccess.getNestedExpCSAccess().getLeftParenthesisKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NestedExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NestedExpCS__Group__1__Impl
	rule__NestedExpCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NestedExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNestedExpCSAccess().getOwnedExpressionAssignment_1()); }
(rule__NestedExpCS__OwnedExpressionAssignment_1)
{ after(grammarAccess.getNestedExpCSAccess().getOwnedExpressionAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__NestedExpCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__NestedExpCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NestedExpCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNestedExpCSAccess().getRightParenthesisKeyword_2()); }

	')' 

{ after(grammarAccess.getNestedExpCSAccess().getRightParenthesisKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SelfExpCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SelfExpCS__Group__0__Impl
	rule__SelfExpCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SelfExpCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSelfExpCSAccess().getSelfExpCSAction_0()); }
(

)
{ after(grammarAccess.getSelfExpCSAccess().getSelfExpCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SelfExpCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SelfExpCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SelfExpCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSelfExpCSAccess().getSelfKeyword_1()); }

	'self' 

{ after(grammarAccess.getSelfExpCSAccess().getSelfKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MultiplicityBoundsCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MultiplicityBoundsCS__Group__0__Impl
	rule__MultiplicityBoundsCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityBoundsCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityBoundsCSAccess().getLowerBoundAssignment_0()); }
(rule__MultiplicityBoundsCS__LowerBoundAssignment_0)
{ after(grammarAccess.getMultiplicityBoundsCSAccess().getLowerBoundAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MultiplicityBoundsCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MultiplicityBoundsCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityBoundsCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityBoundsCSAccess().getGroup_1()); }
(rule__MultiplicityBoundsCS__Group_1__0)?
{ after(grammarAccess.getMultiplicityBoundsCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MultiplicityBoundsCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MultiplicityBoundsCS__Group_1__0__Impl
	rule__MultiplicityBoundsCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityBoundsCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityBoundsCSAccess().getFullStopFullStopKeyword_1_0()); }

	'..' 

{ after(grammarAccess.getMultiplicityBoundsCSAccess().getFullStopFullStopKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MultiplicityBoundsCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MultiplicityBoundsCS__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityBoundsCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityBoundsCSAccess().getUpperBoundAssignment_1_1()); }
(rule__MultiplicityBoundsCS__UpperBoundAssignment_1_1)
{ after(grammarAccess.getMultiplicityBoundsCSAccess().getUpperBoundAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__MultiplicityCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MultiplicityCS__Group__0__Impl
	rule__MultiplicityCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityCSAccess().getLeftSquareBracketKeyword_0()); }

	'[' 

{ after(grammarAccess.getMultiplicityCSAccess().getLeftSquareBracketKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MultiplicityCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MultiplicityCS__Group__1__Impl
	rule__MultiplicityCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityCSAccess().getAlternatives_1()); }
(rule__MultiplicityCS__Alternatives_1)
{ after(grammarAccess.getMultiplicityCSAccess().getAlternatives_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MultiplicityCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MultiplicityCS__Group__2__Impl
	rule__MultiplicityCS__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityCSAccess().getAlternatives_2()); }
(rule__MultiplicityCS__Alternatives_2)?
{ after(grammarAccess.getMultiplicityCSAccess().getAlternatives_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__MultiplicityCS__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__MultiplicityCS__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityCS__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityCSAccess().getRightSquareBracketKeyword_3()); }

	']' 

{ after(grammarAccess.getMultiplicityCSAccess().getRightSquareBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__PathNameCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PathNameCS__Group__0__Impl
	rule__PathNameCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPathNameCSAccess().getOwnedPathElementsAssignment_0()); }
(rule__PathNameCS__OwnedPathElementsAssignment_0)
{ after(grammarAccess.getPathNameCSAccess().getOwnedPathElementsAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PathNameCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PathNameCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPathNameCSAccess().getGroup_1()); }
(rule__PathNameCS__Group_1__0)*
{ after(grammarAccess.getPathNameCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__PathNameCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PathNameCS__Group_1__0__Impl
	rule__PathNameCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPathNameCSAccess().getColonColonKeyword_1_0()); }

	'::' 

{ after(grammarAccess.getPathNameCSAccess().getColonColonKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PathNameCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PathNameCS__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPathNameCSAccess().getOwnedPathElementsAssignment_1_1()); }
(rule__PathNameCS__OwnedPathElementsAssignment_1_1)
{ after(grammarAccess.getPathNameCSAccess().getOwnedPathElementsAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TemplateBindingCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TemplateBindingCS__Group__0__Impl
	rule__TemplateBindingCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBindingCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTemplateBindingCSAccess().getOwnedSubstitutionsAssignment_0()); }
(rule__TemplateBindingCS__OwnedSubstitutionsAssignment_0)
{ after(grammarAccess.getTemplateBindingCSAccess().getOwnedSubstitutionsAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TemplateBindingCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TemplateBindingCS__Group__1__Impl
	rule__TemplateBindingCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBindingCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTemplateBindingCSAccess().getGroup_1()); }
(rule__TemplateBindingCS__Group_1__0)*
{ after(grammarAccess.getTemplateBindingCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TemplateBindingCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TemplateBindingCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBindingCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTemplateBindingCSAccess().getOwnedMultiplicityAssignment_2()); }
(rule__TemplateBindingCS__OwnedMultiplicityAssignment_2)?
{ after(grammarAccess.getTemplateBindingCSAccess().getOwnedMultiplicityAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__TemplateBindingCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TemplateBindingCS__Group_1__0__Impl
	rule__TemplateBindingCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBindingCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTemplateBindingCSAccess().getCommaKeyword_1_0()); }

	',' 

{ after(grammarAccess.getTemplateBindingCSAccess().getCommaKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TemplateBindingCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TemplateBindingCS__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBindingCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTemplateBindingCSAccess().getOwnedSubstitutionsAssignment_1_1()); }
(rule__TemplateBindingCS__OwnedSubstitutionsAssignment_1_1)
{ after(grammarAccess.getTemplateBindingCSAccess().getOwnedSubstitutionsAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__TypeParameterCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeParameterCS__Group__0__Impl
	rule__TypeParameterCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeParameterCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeParameterCSAccess().getNameAssignment_0()); }
(rule__TypeParameterCS__NameAssignment_0)
{ after(grammarAccess.getTypeParameterCSAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypeParameterCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeParameterCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeParameterCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeParameterCSAccess().getGroup_1()); }
(rule__TypeParameterCS__Group_1__0)?
{ after(grammarAccess.getTypeParameterCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TypeParameterCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeParameterCS__Group_1__0__Impl
	rule__TypeParameterCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeParameterCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeParameterCSAccess().getExtendsKeyword_1_0()); }

	'extends' 

{ after(grammarAccess.getTypeParameterCSAccess().getExtendsKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypeParameterCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeParameterCS__Group_1__1__Impl
	rule__TypeParameterCS__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeParameterCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeParameterCSAccess().getOwnedExtendsAssignment_1_1()); }
(rule__TypeParameterCS__OwnedExtendsAssignment_1_1)
{ after(grammarAccess.getTypeParameterCSAccess().getOwnedExtendsAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypeParameterCS__Group_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeParameterCS__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeParameterCS__Group_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeParameterCSAccess().getGroup_1_2()); }
(rule__TypeParameterCS__Group_1_2__0)*
{ after(grammarAccess.getTypeParameterCSAccess().getGroup_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__TypeParameterCS__Group_1_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeParameterCS__Group_1_2__0__Impl
	rule__TypeParameterCS__Group_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeParameterCS__Group_1_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeParameterCSAccess().getAmpersandAmpersandKeyword_1_2_0()); }

	'&&' 

{ after(grammarAccess.getTypeParameterCSAccess().getAmpersandAmpersandKeyword_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypeParameterCS__Group_1_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeParameterCS__Group_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeParameterCS__Group_1_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeParameterCSAccess().getOwnedExtendsAssignment_1_2_1()); }
(rule__TypeParameterCS__OwnedExtendsAssignment_1_2_1)
{ after(grammarAccess.getTypeParameterCSAccess().getOwnedExtendsAssignment_1_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TypedTypeRefCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypedTypeRefCS__Group__0__Impl
	rule__TypedTypeRefCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypedTypeRefCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypedTypeRefCSAccess().getOwnedPathNameAssignment_0()); }
(rule__TypedTypeRefCS__OwnedPathNameAssignment_0)
{ after(grammarAccess.getTypedTypeRefCSAccess().getOwnedPathNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypedTypeRefCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypedTypeRefCS__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypedTypeRefCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypedTypeRefCSAccess().getGroup_1()); }
(rule__TypedTypeRefCS__Group_1__0)?
{ after(grammarAccess.getTypedTypeRefCSAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TypedTypeRefCS__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypedTypeRefCS__Group_1__0__Impl
	rule__TypedTypeRefCS__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypedTypeRefCS__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypedTypeRefCSAccess().getLeftParenthesisKeyword_1_0()); }

	'(' 

{ after(grammarAccess.getTypedTypeRefCSAccess().getLeftParenthesisKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypedTypeRefCS__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypedTypeRefCS__Group_1__1__Impl
	rule__TypedTypeRefCS__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TypedTypeRefCS__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypedTypeRefCSAccess().getOwnedBindingAssignment_1_1()); }
(rule__TypedTypeRefCS__OwnedBindingAssignment_1_1)
{ after(grammarAccess.getTypedTypeRefCSAccess().getOwnedBindingAssignment_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypedTypeRefCS__Group_1__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypedTypeRefCS__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypedTypeRefCS__Group_1__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypedTypeRefCSAccess().getRightParenthesisKeyword_1_2()); }

	')' 

{ after(grammarAccess.getTypedTypeRefCSAccess().getRightParenthesisKeyword_1_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__WildcardTypeRefCS__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WildcardTypeRefCS__Group__0__Impl
	rule__WildcardTypeRefCS__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WildcardTypeRefCS__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWildcardTypeRefCSAccess().getWildcardTypeRefCSAction_0()); }
(

)
{ after(grammarAccess.getWildcardTypeRefCSAccess().getWildcardTypeRefCSAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WildcardTypeRefCS__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WildcardTypeRefCS__Group__1__Impl
	rule__WildcardTypeRefCS__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__WildcardTypeRefCS__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWildcardTypeRefCSAccess().getQuestionMarkKeyword_1()); }

	'?' 

{ after(grammarAccess.getWildcardTypeRefCSAccess().getQuestionMarkKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WildcardTypeRefCS__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WildcardTypeRefCS__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WildcardTypeRefCS__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWildcardTypeRefCSAccess().getGroup_2()); }
(rule__WildcardTypeRefCS__Group_2__0)?
{ after(grammarAccess.getWildcardTypeRefCSAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__WildcardTypeRefCS__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WildcardTypeRefCS__Group_2__0__Impl
	rule__WildcardTypeRefCS__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WildcardTypeRefCS__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWildcardTypeRefCSAccess().getExtendsKeyword_2_0()); }

	'extends' 

{ after(grammarAccess.getWildcardTypeRefCSAccess().getExtendsKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WildcardTypeRefCS__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WildcardTypeRefCS__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WildcardTypeRefCS__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWildcardTypeRefCSAccess().getOwnedExtendsAssignment_2_1()); }
(rule__WildcardTypeRefCS__OwnedExtendsAssignment_2_1)
{ after(grammarAccess.getWildcardTypeRefCSAccess().getOwnedExtendsAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}







rule__TopLevelCS__OwnedImportsAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTopLevelCSAccess().getOwnedImportsImportCSParserRuleCall_0_0()); }
	ruleImportCS{ after(grammarAccess.getTopLevelCSAccess().getOwnedImportsImportCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TopLevelCS__OwnedTransformationsAssignment_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTopLevelCSAccess().getOwnedTransformationsTransformationCSParserRuleCall_1_0_0()); }
	ruleTransformationCS{ after(grammarAccess.getTopLevelCSAccess().getOwnedTransformationsTransformationCSParserRuleCall_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TopLevelCS__OwnedMappingsAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTopLevelCSAccess().getOwnedMappingsMappingCSParserRuleCall_1_1_0()); }
	ruleMappingCS{ after(grammarAccess.getTopLevelCSAccess().getOwnedMappingsMappingCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TopLevelCS__OwnedQueriesAssignment_1_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTopLevelCSAccess().getOwnedQueriesQueryCSParserRuleCall_1_2_0()); }
	ruleQueryCS{ after(grammarAccess.getTopLevelCSAccess().getOwnedQueriesQueryCSParserRuleCall_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getNameUnrestrictedNameParserRuleCall_1_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getDirectionCSAccess().getNameUnrestrictedNameParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__ImportsAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getImportsPackageCrossReference_2_1_0()); }
(
{ before(grammarAccess.getDirectionCSAccess().getImportsPackageUnrestrictedNameParserRuleCall_2_1_0_1()); }
	ruleUnrestrictedName{ after(grammarAccess.getDirectionCSAccess().getImportsPackageUnrestrictedNameParserRuleCall_2_1_0_1()); }
)
{ after(grammarAccess.getDirectionCSAccess().getImportsPackageCrossReference_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__ImportsAssignment_2_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getImportsPackageCrossReference_2_2_1_0()); }
(
{ before(grammarAccess.getDirectionCSAccess().getImportsPackageUnrestrictedNameParserRuleCall_2_2_1_0_1()); }
	ruleUnrestrictedName{ after(grammarAccess.getDirectionCSAccess().getImportsPackageUnrestrictedNameParserRuleCall_2_2_1_0_1()); }
)
{ after(grammarAccess.getDirectionCSAccess().getImportsPackageCrossReference_2_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__UsesAssignment_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getUsesCoreDomainCrossReference_3_1_0()); }
(
{ before(grammarAccess.getDirectionCSAccess().getUsesCoreDomainUnrestrictedNameParserRuleCall_3_1_0_1()); }
	ruleUnrestrictedName{ after(grammarAccess.getDirectionCSAccess().getUsesCoreDomainUnrestrictedNameParserRuleCall_3_1_0_1()); }
)
{ after(grammarAccess.getDirectionCSAccess().getUsesCoreDomainCrossReference_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DirectionCS__UsesAssignment_3_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDirectionCSAccess().getUsesCoreDomainCrossReference_3_2_1_0()); }
(
{ before(grammarAccess.getDirectionCSAccess().getUsesCoreDomainUnrestrictedNameParserRuleCall_3_2_1_0_1()); }
	ruleUnrestrictedName{ after(grammarAccess.getDirectionCSAccess().getUsesCoreDomainUnrestrictedNameParserRuleCall_3_2_1_0_1()); }
)
{ after(grammarAccess.getDirectionCSAccess().getUsesCoreDomainCrossReference_3_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__IsDefaultAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getIsDefaultDefaultKeyword_1_0()); }
(
{ before(grammarAccess.getMappingCSAccess().getIsDefaultDefaultKeyword_1_0()); }

	'default' 

{ after(grammarAccess.getMappingCSAccess().getIsDefaultDefaultKeyword_1_0()); }
)

{ after(grammarAccess.getMappingCSAccess().getIsDefaultDefaultKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__NameAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getNameUnrestrictedNameParserRuleCall_3_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getMappingCSAccess().getNameUnrestrictedNameParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__OwnedInPathNameAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedInPathNamePathNameCSParserRuleCall_4_1_0()); }
	rulePathNameCS{ after(grammarAccess.getMappingCSAccess().getOwnedInPathNamePathNameCSParserRuleCall_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__OwnedUsesPathNamesAssignment_5_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedUsesPathNamesPathNameCSParserRuleCall_5_1_0()); }
	rulePathNameCS{ after(grammarAccess.getMappingCSAccess().getOwnedUsesPathNamesPathNameCSParserRuleCall_5_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__OwnedUsesPathNamesAssignment_5_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedUsesPathNamesPathNameCSParserRuleCall_5_2_1_0()); }
	rulePathNameCS{ after(grammarAccess.getMappingCSAccess().getOwnedUsesPathNamesPathNameCSParserRuleCall_5_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__OwnedDomainsAssignment_7
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedDomainsAlternatives_7_0()); }
(rule__MappingCS__OwnedDomainsAlternatives_7_0)
{ after(grammarAccess.getMappingCSAccess().getOwnedDomainsAlternatives_7_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__OwnedMiddleAssignment_8_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedMiddleMiddleDomainCSParserRuleCall_8_1_0()); }
	ruleMiddleDomainCS{ after(grammarAccess.getMappingCSAccess().getOwnedMiddleMiddleDomainCSParserRuleCall_8_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCS__OwnedMappingSequenceAssignment_9
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCSAccess().getOwnedMappingSequenceMappingSequenceCSParserRuleCall_9_0()); }
	ruleMappingSequenceCS{ after(grammarAccess.getMappingCSAccess().getOwnedMappingSequenceMappingSequenceCSParserRuleCall_9_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallCS__IsInfiniteAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallCSAccess().getIsInfiniteInfiniteKeyword_1_0()); }
(
{ before(grammarAccess.getMappingCallCSAccess().getIsInfiniteInfiniteKeyword_1_0()); }

	'infinite' 

{ after(grammarAccess.getMappingCallCSAccess().getIsInfiniteInfiniteKeyword_1_0()); }
)

{ after(grammarAccess.getMappingCallCSAccess().getIsInfiniteInfiniteKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallCS__OwnedPathNameAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallCSAccess().getOwnedPathNamePathNameCSParserRuleCall_3_0()); }
	rulePathNameCS{ after(grammarAccess.getMappingCallCSAccess().getOwnedPathNamePathNameCSParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallCS__OwnedBindingsAssignment_5
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallCSAccess().getOwnedBindingsMappingCallBindingCSParserRuleCall_5_0()); }
	ruleMappingCallBindingCS{ after(grammarAccess.getMappingCallCSAccess().getOwnedBindingsMappingCallBindingCSParserRuleCall_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallBindingCS__ReferredVariableAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallBindingCSAccess().getReferredVariableVariableCrossReference_0_0()); }
(
{ before(grammarAccess.getMappingCallBindingCSAccess().getReferredVariableVariableUnrestrictedNameParserRuleCall_0_0_1()); }
	ruleUnrestrictedName{ after(grammarAccess.getMappingCallBindingCSAccess().getReferredVariableVariableUnrestrictedNameParserRuleCall_0_0_1()); }
)
{ after(grammarAccess.getMappingCallBindingCSAccess().getReferredVariableVariableCrossReference_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallBindingCS__IsPolledAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallBindingCSAccess().getIsPolledQuestionMarkEqualsSignKeyword_1_1_0()); }
(
{ before(grammarAccess.getMappingCallBindingCSAccess().getIsPolledQuestionMarkEqualsSignKeyword_1_1_0()); }

	'?=' 

{ after(grammarAccess.getMappingCallBindingCSAccess().getIsPolledQuestionMarkEqualsSignKeyword_1_1_0()); }
)

{ after(grammarAccess.getMappingCallBindingCSAccess().getIsPolledQuestionMarkEqualsSignKeyword_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingCallBindingCS__OwnedValueAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingCallBindingCSAccess().getOwnedValueExpCSParserRuleCall_2_0()); }
	ruleExpCS{ after(grammarAccess.getMappingCallBindingCSAccess().getOwnedValueExpCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingLoopCS__OwnedIteratorAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingLoopCSAccess().getOwnedIteratorMappingIteratorCSParserRuleCall_1_0()); }
	ruleMappingIteratorCS{ after(grammarAccess.getMappingLoopCSAccess().getOwnedIteratorMappingIteratorCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingLoopCS__OwnedInExpressionAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingLoopCSAccess().getOwnedInExpressionExpCSParserRuleCall_3_0()); }
	ruleExpCS{ after(grammarAccess.getMappingLoopCSAccess().getOwnedInExpressionExpCSParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingLoopCS__OwnedMappingSequenceAssignment_5
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingLoopCSAccess().getOwnedMappingSequenceMappingSequenceCSParserRuleCall_5_0()); }
	ruleMappingSequenceCS{ after(grammarAccess.getMappingLoopCSAccess().getOwnedMappingSequenceMappingSequenceCSParserRuleCall_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingIteratorCS__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingIteratorCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getMappingIteratorCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingIteratorCS__OwnedTypeAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingIteratorCSAccess().getOwnedTypeTypeExpCSParserRuleCall_1_1_0()); }
	ruleTypeExpCS{ after(grammarAccess.getMappingIteratorCSAccess().getOwnedTypeTypeExpCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MappingSequenceCS__OwnedMappingStatementsAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMappingSequenceCSAccess().getOwnedMappingStatementsMappingStatementCSParserRuleCall_0()); }
	ruleMappingStatementCS{ after(grammarAccess.getMappingSequenceCSAccess().getOwnedMappingStatementsMappingStatementCSParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ImperativePredicateOrAssignmentCS__IsDefaultAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsDefaultDefaultKeyword_0_0()); }
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsDefaultDefaultKeyword_0_0()); }

	'default' 

{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsDefaultDefaultKeyword_0_0()); }
)

{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsDefaultDefaultKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ImperativePredicateOrAssignmentCS__OwnedTargetAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getOwnedTargetExpCSParserRuleCall_1_0()); }
	ruleExpCS{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getOwnedTargetExpCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ImperativePredicateOrAssignmentCS__IsAccumulateAssignment_2_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsAccumulatePlusSignEqualsSignKeyword_2_0_1_0()); }
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsAccumulatePlusSignEqualsSignKeyword_2_0_1_0()); }

	'+=' 

{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsAccumulatePlusSignEqualsSignKeyword_2_0_1_0()); }
)

{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getIsAccumulatePlusSignEqualsSignKeyword_2_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ImperativePredicateOrAssignmentCS__OwnedInitExpressionAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_1_0()); }
	ruleExpCS{ after(grammarAccess.getImperativePredicateOrAssignmentCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__IsCheckAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getIsCheckCheckKeyword_0_0()); }
(
{ before(grammarAccess.getSourceDomainCSAccess().getIsCheckCheckKeyword_0_0()); }

	'check' 

{ after(grammarAccess.getSourceDomainCSAccess().getIsCheckCheckKeyword_0_0()); }
)

{ after(grammarAccess.getSourceDomainCSAccess().getIsCheckCheckKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__DirectionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getDirectionTypedModelCrossReference_1_0()); }
(
{ before(grammarAccess.getSourceDomainCSAccess().getDirectionTypedModelUnrestrictedNameParserRuleCall_1_0_1()); }
	ruleUnrestrictedName{ after(grammarAccess.getSourceDomainCSAccess().getDirectionTypedModelUnrestrictedNameParserRuleCall_1_0_1()); }
)
{ after(grammarAccess.getSourceDomainCSAccess().getDirectionTypedModelCrossReference_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__CheckedPropertiesAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_2_1_1_0()); }
	rulePathNameCS{ after(grammarAccess.getSourceDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__CheckedPropertiesAssignment_2_1_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_2_1_2_1_0()); }
	rulePathNameCS{ after(grammarAccess.getSourceDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_2_1_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__EnforcedPropertiesAssignment_2_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_2_2_1_0()); }
	rulePathNameCS{ after(grammarAccess.getSourceDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_2_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__EnforcedPropertiesAssignment_2_2_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_2_2_2_1_0()); }
	rulePathNameCS{ after(grammarAccess.getSourceDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_2_2_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__OwnedGuardPatternAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getOwnedGuardPatternSourceGuardPatternCSParserRuleCall_3_0()); }
	ruleSourceGuardPatternCS{ after(grammarAccess.getSourceDomainCSAccess().getOwnedGuardPatternSourceGuardPatternCSParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceDomainCS__OwnedBottomPatternAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceDomainCSAccess().getOwnedBottomPatternSourceBottomPatternCSParserRuleCall_4_0()); }
	ruleSourceBottomPatternCS{ after(grammarAccess.getSourceDomainCSAccess().getOwnedBottomPatternSourceBottomPatternCSParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceBottomPatternCS__OwnedUnrealizedVariablesAssignment_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_0_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getSourceBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceBottomPatternCS__OwnedUnrealizedVariablesAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_1_1_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getSourceBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceGuardPatternCS__OwnedUnrealizedVariablesAssignment_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceGuardPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_0_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getSourceGuardPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourceGuardPatternCS__OwnedUnrealizedVariablesAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourceGuardPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_1_1_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getSourceGuardPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__CheckedPropertiesAssignment_0_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_0_1_1_0()); }
	rulePathNameCS{ after(grammarAccess.getMiddleDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_0_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__CheckedPropertiesAssignment_0_1_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_0_1_2_1_0()); }
	rulePathNameCS{ after(grammarAccess.getMiddleDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_0_1_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__EnforcedPropertiesAssignment_0_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_0_2_1_0()); }
	rulePathNameCS{ after(grammarAccess.getMiddleDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_0_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__EnforcedPropertiesAssignment_0_2_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_0_2_2_1_0()); }
	rulePathNameCS{ after(grammarAccess.getMiddleDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_0_2_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__OwnedGuardPatternAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getOwnedGuardPatternMiddleGuardPatternCSParserRuleCall_1_0()); }
	ruleMiddleGuardPatternCS{ after(grammarAccess.getMiddleDomainCSAccess().getOwnedGuardPatternMiddleGuardPatternCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleDomainCS__OwnedBottomPatternAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleDomainCSAccess().getOwnedBottomPatternMiddleBottomPatternCSParserRuleCall_2_0()); }
	ruleMiddleBottomPatternCS{ after(grammarAccess.getMiddleDomainCSAccess().getOwnedBottomPatternMiddleBottomPatternCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__OwnedUnrealizedVariablesAssignment_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_0_1_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__OwnedUnrealizedVariablesAssignment_0_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_0_2_1_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_0_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__OwnedConstraintsAssignment_0_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedConstraintsImperativePredicateOrAssignmentCSParserRuleCall_0_4_0()); }
	ruleImperativePredicateOrAssignmentCS{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedConstraintsImperativePredicateOrAssignmentCSParserRuleCall_0_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__OwnedUnrealizedVariablesAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_1_1_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__OwnedUnrealizedVariablesAssignment_1_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_1_2_1_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_1_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MiddleBottomPatternCS__OwnedConstraintsAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedConstraintsImperativePredicateOrAssignmentCSParserRuleCall_2_1_0()); }
	ruleImperativePredicateOrAssignmentCS{ after(grammarAccess.getMiddleBottomPatternCSAccess().getOwnedConstraintsImperativePredicateOrAssignmentCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__IsEnforceAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getIsEnforceEnforceKeyword_0_0()); }
(
{ before(grammarAccess.getTargetDomainCSAccess().getIsEnforceEnforceKeyword_0_0()); }

	'enforce' 

{ after(grammarAccess.getTargetDomainCSAccess().getIsEnforceEnforceKeyword_0_0()); }
)

{ after(grammarAccess.getTargetDomainCSAccess().getIsEnforceEnforceKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__DirectionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getDirectionTypedModelCrossReference_1_0()); }
(
{ before(grammarAccess.getTargetDomainCSAccess().getDirectionTypedModelUnrestrictedNameParserRuleCall_1_0_1()); }
	ruleUnrestrictedName{ after(grammarAccess.getTargetDomainCSAccess().getDirectionTypedModelUnrestrictedNameParserRuleCall_1_0_1()); }
)
{ after(grammarAccess.getTargetDomainCSAccess().getDirectionTypedModelCrossReference_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__CheckedPropertiesAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_2_1_1_0()); }
	rulePathNameCS{ after(grammarAccess.getTargetDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__CheckedPropertiesAssignment_2_1_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_2_1_2_1_0()); }
	rulePathNameCS{ after(grammarAccess.getTargetDomainCSAccess().getCheckedPropertiesPathNameCSParserRuleCall_2_1_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__EnforcedPropertiesAssignment_2_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_2_2_1_0()); }
	rulePathNameCS{ after(grammarAccess.getTargetDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_2_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__EnforcedPropertiesAssignment_2_2_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_2_2_2_1_0()); }
	rulePathNameCS{ after(grammarAccess.getTargetDomainCSAccess().getEnforcedPropertiesPathNameCSParserRuleCall_2_2_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__OwnedGuardPatternAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getOwnedGuardPatternTargetGuardPatternCSParserRuleCall_3_0()); }
	ruleTargetGuardPatternCS{ after(grammarAccess.getTargetDomainCSAccess().getOwnedGuardPatternTargetGuardPatternCSParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetDomainCS__OwnedBottomPatternAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetDomainCSAccess().getOwnedBottomPatternTargetBottomPatternCSParserRuleCall_4_0()); }
	ruleTargetBottomPatternCS{ after(grammarAccess.getTargetDomainCSAccess().getOwnedBottomPatternTargetBottomPatternCSParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__OwnedRealizedVariablesAssignment_2_0_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_2_0_0_0()); }
	ruleRealizedVariableCS{ after(grammarAccess.getTargetBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_2_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__OwnedUnrealizedVariablesAssignment_2_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_0_1_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getTargetBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__OwnedRealizedVariablesAssignment_2_1_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_2_1_1_0_0()); }
	ruleRealizedVariableCS{ after(grammarAccess.getTargetBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_2_1_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetBottomPatternCS__OwnedUnrealizedVariablesAssignment_2_1_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_1_1_1_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getTargetBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_1_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetGuardPatternCS__OwnedUnrealizedVariablesAssignment_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetGuardPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_0_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getTargetGuardPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetGuardPatternCS__OwnedUnrealizedVariablesAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetGuardPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_1_1_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getTargetGuardPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_0_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_0_1_0_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_0_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__OwnedRealizedVariablesAssignment_0_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_0_1_1_0()); }
	ruleRealizedVariableCS{ after(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_0_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_0_2_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_0_2_1_0_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_0_2_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__OwnedRealizedVariablesAssignment_0_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_0_2_1_1_0()); }
	ruleRealizedVariableCS{ after(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_0_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__OwnedConstraintsAssignment_0_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsPredicateOrAssignmentCSParserRuleCall_0_4_0()); }
	rulePredicateOrAssignmentCS{ after(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsPredicateOrAssignmentCSParserRuleCall_0_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_1_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_1_1_0_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_1_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__OwnedRealizedVariablesAssignment_1_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_1_1_1_0()); }
	ruleRealizedVariableCS{ after(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_1_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__OwnedUnrealizedVariablesAssignment_1_2_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_1_2_1_0_0()); }
	ruleUnrealizedVariableCS{ after(grammarAccess.getBottomPatternCSAccess().getOwnedUnrealizedVariablesUnrealizedVariableCSParserRuleCall_1_2_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__OwnedRealizedVariablesAssignment_1_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_1_2_1_1_0()); }
	ruleRealizedVariableCS{ after(grammarAccess.getBottomPatternCSAccess().getOwnedRealizedVariablesRealizedVariableCSParserRuleCall_1_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BottomPatternCS__OwnedConstraintsAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsPredicateOrAssignmentCSParserRuleCall_2_1_0()); }
	rulePredicateOrAssignmentCS{ after(grammarAccess.getBottomPatternCSAccess().getOwnedConstraintsPredicateOrAssignmentCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesGuardVariableCSParserRuleCall_0_1_0()); }
	ruleGuardVariableCS{ after(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesGuardVariableCSParserRuleCall_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_0_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesGuardVariableCSParserRuleCall_0_2_1_0()); }
	ruleGuardVariableCS{ after(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesGuardVariableCSParserRuleCall_0_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__OwnedPredicatesAssignment_0_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesPredicateCSParserRuleCall_0_4_0()); }
	rulePredicateCS{ after(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesPredicateCSParserRuleCall_0_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesGuardVariableCSParserRuleCall_1_1_0()); }
	ruleGuardVariableCS{ after(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesGuardVariableCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__OwnedUnrealizedVariablesAssignment_1_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesGuardVariableCSParserRuleCall_1_2_1_0()); }
	ruleGuardVariableCS{ after(grammarAccess.getGuardPatternCSAccess().getOwnedUnrealizedVariablesGuardVariableCSParserRuleCall_1_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GuardPatternCS__OwnedPredicatesAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesPredicateCSParserRuleCall_2_1_0()); }
	rulePredicateCS{ after(grammarAccess.getGuardPatternCSAccess().getOwnedPredicatesPredicateCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GuardVariableCS__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardVariableCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getGuardVariableCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GuardVariableCS__OwnedTypeAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGuardVariableCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_0()); }
	ruleTypeExpCS{ after(grammarAccess.getGuardVariableCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__NameAssignment_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getNameIdentifierParserRuleCall_1_0_0()); }
	ruleIdentifier{ after(grammarAccess.getImportCSAccess().getNameIdentifierParserRuleCall_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__OwnedPathNameAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getOwnedPathNameURIPathNameCSParserRuleCall_2_0()); }
	ruleURIPathNameCS{ after(grammarAccess.getImportCSAccess().getOwnedPathNameURIPathNameCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ImportCS__IsAllAssignment_3_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportCSAccess().getIsAllColonColonKeyword_3_0_0()); }
(
{ before(grammarAccess.getImportCSAccess().getIsAllColonColonKeyword_3_0_0()); }

	'::' 

{ after(grammarAccess.getImportCSAccess().getIsAllColonColonKeyword_3_0_0()); }
)

{ after(grammarAccess.getImportCSAccess().getIsAllColonColonKeyword_3_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__ParamDeclarationCS__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getParamDeclarationCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getParamDeclarationCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ParamDeclarationCS__OwnedTypeAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getParamDeclarationCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_0()); }
	ruleTypeExpCS{ after(grammarAccess.getParamDeclarationCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateCS__OwnedConditionAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateCSAccess().getOwnedConditionExpCSParserRuleCall_0_0()); }
	ruleExpCS{ after(grammarAccess.getPredicateCSAccess().getOwnedConditionExpCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateOrAssignmentCS__IsDefaultAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateOrAssignmentCSAccess().getIsDefaultDefaultKeyword_0_0()); }
(
{ before(grammarAccess.getPredicateOrAssignmentCSAccess().getIsDefaultDefaultKeyword_0_0()); }

	'default' 

{ after(grammarAccess.getPredicateOrAssignmentCSAccess().getIsDefaultDefaultKeyword_0_0()); }
)

{ after(grammarAccess.getPredicateOrAssignmentCSAccess().getIsDefaultDefaultKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateOrAssignmentCS__OwnedTargetAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateOrAssignmentCSAccess().getOwnedTargetExpCSParserRuleCall_1_0()); }
	ruleExpCS{ after(grammarAccess.getPredicateOrAssignmentCSAccess().getOwnedTargetExpCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PredicateOrAssignmentCS__OwnedInitExpressionAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPredicateOrAssignmentCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_1_0()); }
	ruleExpCS{ after(grammarAccess.getPredicateOrAssignmentCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__OwnedPathNameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getOwnedPathNameScopeNameCSParserRuleCall_1_0()); }
	ruleScopeNameCS{ after(grammarAccess.getQueryCSAccess().getOwnedPathNameScopeNameCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__NameAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getNameUnrestrictedNameParserRuleCall_2_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getQueryCSAccess().getNameUnrestrictedNameParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__OwnedParametersAssignment_4_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getOwnedParametersParamDeclarationCSParserRuleCall_4_0_0()); }
	ruleParamDeclarationCS{ after(grammarAccess.getQueryCSAccess().getOwnedParametersParamDeclarationCSParserRuleCall_4_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__OwnedParametersAssignment_4_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getOwnedParametersParamDeclarationCSParserRuleCall_4_1_1_0()); }
	ruleParamDeclarationCS{ after(grammarAccess.getQueryCSAccess().getOwnedParametersParamDeclarationCSParserRuleCall_4_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__OwnedTypeAssignment_7
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getOwnedTypeTypeExpCSParserRuleCall_7_0()); }
	ruleTypeExpCS{ after(grammarAccess.getQueryCSAccess().getOwnedTypeTypeExpCSParserRuleCall_7_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__QueryCS__OwnedExpressionAssignment_8_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQueryCSAccess().getOwnedExpressionExpCSParserRuleCall_8_1_1_0()); }
	ruleExpCS{ after(grammarAccess.getQueryCSAccess().getOwnedExpressionExpCSParserRuleCall_8_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeNameCS__OwnedPathElementsAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getScopeNameCSAccess().getOwnedPathElementsFirstPathElementCSParserRuleCall_0_0()); }
	ruleFirstPathElementCS{ after(grammarAccess.getScopeNameCSAccess().getOwnedPathElementsFirstPathElementCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ScopeNameCS__OwnedPathElementsAssignment_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getScopeNameCSAccess().getOwnedPathElementsNextPathElementCSParserRuleCall_2_0_0()); }
	ruleNextPathElementCS{ after(grammarAccess.getScopeNameCSAccess().getOwnedPathElementsNextPathElementCSParserRuleCall_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TransformationCS__OwnedPathNameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTransformationCSAccess().getOwnedPathNameScopeNameCSParserRuleCall_1_0()); }
	ruleScopeNameCS{ after(grammarAccess.getTransformationCSAccess().getOwnedPathNameScopeNameCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TransformationCS__NameAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTransformationCSAccess().getNameUnreservedNameParserRuleCall_2_0()); }
	ruleUnreservedName{ after(grammarAccess.getTransformationCSAccess().getNameUnreservedNameParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TransformationCS__OwnedDirectionsAssignment_4_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTransformationCSAccess().getOwnedDirectionsDirectionCSParserRuleCall_4_0_0()); }
	ruleDirectionCS{ after(grammarAccess.getTransformationCSAccess().getOwnedDirectionsDirectionCSParserRuleCall_4_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__UnrealizedVariableCS__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnrealizedVariableCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getUnrealizedVariableCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__UnrealizedVariableCS__OwnedTypeAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnrealizedVariableCSAccess().getOwnedTypeTypeExpCSParserRuleCall_1_1_0()); }
	ruleTypeExpCS{ after(grammarAccess.getUnrealizedVariableCSAccess().getOwnedTypeTypeExpCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__UnrealizedVariableCS__OwnedInitExpressionAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getUnrealizedVariableCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_1_0()); }
	ruleExpCS{ after(grammarAccess.getUnrealizedVariableCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__RealizedVariableCS__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRealizedVariableCSAccess().getNameUnrestrictedNameParserRuleCall_1_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getRealizedVariableCSAccess().getNameUnrestrictedNameParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__RealizedVariableCS__OwnedTypeAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRealizedVariableCSAccess().getOwnedTypeTypeExpCSParserRuleCall_3_0()); }
	ruleTypeExpCS{ after(grammarAccess.getRealizedVariableCSAccess().getOwnedTypeTypeExpCSParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__URIPathNameCS__OwnedPathElementsAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getURIPathNameCSAccess().getOwnedPathElementsURIFirstPathElementCSParserRuleCall_0_0()); }
	ruleURIFirstPathElementCS{ after(grammarAccess.getURIPathNameCSAccess().getOwnedPathElementsURIFirstPathElementCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__URIPathNameCS__OwnedPathElementsAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getURIPathNameCSAccess().getOwnedPathElementsNextPathElementCSParserRuleCall_1_1_0()); }
	ruleNextPathElementCS{ after(grammarAccess.getURIPathNameCSAccess().getOwnedPathElementsNextPathElementCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__URIFirstPathElementCS__ReferredElementAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementNamedElementCrossReference_0_0()); }
(
{ before(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementNamedElementUnrestrictedNameParserRuleCall_0_0_1()); }
	ruleUnrestrictedName{ after(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementNamedElementUnrestrictedNameParserRuleCall_0_0_1()); }
)
{ after(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementNamedElementCrossReference_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__URIFirstPathElementCS__ReferredElementAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementNamespaceCrossReference_1_1_0()); }
(
{ before(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementNamespaceURIParserRuleCall_1_1_0_1()); }
	ruleURI{ after(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementNamespaceURIParserRuleCall_1_1_0_1()); }
)
{ after(grammarAccess.getURIFirstPathElementCSAccess().getReferredElementNamespaceCrossReference_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrimitiveTypeCS__NameAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrimitiveTypeCSAccess().getNamePrimitiveTypeIdentifierParserRuleCall_0()); }
	rulePrimitiveTypeIdentifier{ after(grammarAccess.getPrimitiveTypeCSAccess().getNamePrimitiveTypeIdentifierParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionTypeCS__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionTypeCSAccess().getNameCollectionTypeIdentifierParserRuleCall_0_0()); }
	ruleCollectionTypeIdentifier{ after(grammarAccess.getCollectionTypeCSAccess().getNameCollectionTypeIdentifierParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionTypeCS__OwnedTypeAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionTypeCSAccess().getOwnedTypeTypeExpCSParserRuleCall_1_1_0()); }
	ruleTypeExpCS{ after(grammarAccess.getCollectionTypeCSAccess().getOwnedTypeTypeExpCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MapTypeCS__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapTypeCSAccess().getNameMapKeyword_0_0()); }
(
{ before(grammarAccess.getMapTypeCSAccess().getNameMapKeyword_0_0()); }

	'Map' 

{ after(grammarAccess.getMapTypeCSAccess().getNameMapKeyword_0_0()); }
)

{ after(grammarAccess.getMapTypeCSAccess().getNameMapKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MapTypeCS__OwnedKeyTypeAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapTypeCSAccess().getOwnedKeyTypeTypeExpCSParserRuleCall_1_1_0()); }
	ruleTypeExpCS{ after(grammarAccess.getMapTypeCSAccess().getOwnedKeyTypeTypeExpCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MapTypeCS__OwnedValueTypeAssignment_1_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapTypeCSAccess().getOwnedValueTypeTypeExpCSParserRuleCall_1_3_0()); }
	ruleTypeExpCS{ after(grammarAccess.getMapTypeCSAccess().getOwnedValueTypeTypeExpCSParserRuleCall_1_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getNameTupleKeyword_0_0()); }
(
{ before(grammarAccess.getTupleTypeCSAccess().getNameTupleKeyword_0_0()); }

	'Tuple' 

{ after(grammarAccess.getTupleTypeCSAccess().getNameTupleKeyword_0_0()); }
)

{ after(grammarAccess.getTupleTypeCSAccess().getNameTupleKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__OwnedPartsAssignment_1_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getOwnedPartsTuplePartCSParserRuleCall_1_1_0_0()); }
	ruleTuplePartCS{ after(grammarAccess.getTupleTypeCSAccess().getOwnedPartsTuplePartCSParserRuleCall_1_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TupleTypeCS__OwnedPartsAssignment_1_1_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleTypeCSAccess().getOwnedPartsTuplePartCSParserRuleCall_1_1_1_1_0()); }
	ruleTuplePartCS{ after(grammarAccess.getTupleTypeCSAccess().getOwnedPartsTuplePartCSParserRuleCall_1_1_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePartCS__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTuplePartCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getTuplePartCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePartCS__OwnedTypeAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTuplePartCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_0()); }
	ruleTypeExpCS{ after(grammarAccess.getTuplePartCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExpCS__OwnedTypeAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedTypeCollectionTypeCSParserRuleCall_0_0()); }
	ruleCollectionTypeCS{ after(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedTypeCollectionTypeCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExpCS__OwnedPartsAssignment_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedPartsCollectionLiteralPartCSParserRuleCall_2_0_0()); }
	ruleCollectionLiteralPartCS{ after(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedPartsCollectionLiteralPartCSParserRuleCall_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExpCS__OwnedPartsAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedPartsCollectionLiteralPartCSParserRuleCall_2_1_1_0()); }
	ruleCollectionLiteralPartCS{ after(grammarAccess.getCollectionLiteralExpCSAccess().getOwnedPartsCollectionLiteralPartCSParserRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPartCS__OwnedExpressionAssignment_0_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedExpressionExpCSParserRuleCall_0_0_0()); }
	ruleExpCS{ after(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedExpressionExpCSParserRuleCall_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPartCS__OwnedLastExpressionAssignment_0_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedLastExpressionExpCSParserRuleCall_0_1_1_0()); }
	ruleExpCS{ after(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedLastExpressionExpCSParserRuleCall_0_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPartCS__OwnedExpressionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedExpressionPatternExpCSParserRuleCall_1_0()); }
	rulePatternExpCS{ after(grammarAccess.getCollectionLiteralPartCSAccess().getOwnedExpressionPatternExpCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__OwnedTypeAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getOwnedTypeCollectionTypeCSParserRuleCall_0_0()); }
	ruleCollectionTypeCS{ after(grammarAccess.getCollectionPatternCSAccess().getOwnedTypeCollectionTypeCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__OwnedPartsAssignment_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getOwnedPartsPatternExpCSParserRuleCall_2_0_0()); }
	rulePatternExpCS{ after(grammarAccess.getCollectionPatternCSAccess().getOwnedPartsPatternExpCSParserRuleCall_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__OwnedPartsAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getOwnedPartsPatternExpCSParserRuleCall_2_1_1_0()); }
	rulePatternExpCS{ after(grammarAccess.getCollectionPatternCSAccess().getOwnedPartsPatternExpCSParserRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionPatternCS__RestVariableNameAssignment_2_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCollectionPatternCSAccess().getRestVariableNameIdentifierParserRuleCall_2_2_1_0()); }
	ruleIdentifier{ after(grammarAccess.getCollectionPatternCSAccess().getRestVariableNameIdentifierParserRuleCall_2_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ShadowPartCS__ReferredPropertyAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShadowPartCSAccess().getReferredPropertyPropertyCrossReference_0_0()); }
(
{ before(grammarAccess.getShadowPartCSAccess().getReferredPropertyPropertyUnrestrictedNameParserRuleCall_0_0_1()); }
	ruleUnrestrictedName{ after(grammarAccess.getShadowPartCSAccess().getReferredPropertyPropertyUnrestrictedNameParserRuleCall_0_0_1()); }
)
{ after(grammarAccess.getShadowPartCSAccess().getReferredPropertyPropertyCrossReference_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ShadowPartCS__OwnedInitExpressionAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getShadowPartCSAccess().getOwnedInitExpressionAlternatives_2_0()); }
(rule__ShadowPartCS__OwnedInitExpressionAlternatives_2_0)
{ after(grammarAccess.getShadowPartCSAccess().getOwnedInitExpressionAlternatives_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PatternExpCS__PatternVariableNameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPatternExpCSAccess().getPatternVariableNameUnrestrictedNameParserRuleCall_0_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getPatternExpCSAccess().getPatternVariableNameUnrestrictedNameParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PatternExpCS__OwnedPatternTypeAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPatternExpCSAccess().getOwnedPatternTypeTypeExpCSParserRuleCall_2_0()); }
	ruleTypeExpCS{ after(grammarAccess.getPatternExpCSAccess().getOwnedPatternTypeTypeExpCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__LambdaLiteralExpCS__OwnedExpressionCSAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLambdaLiteralExpCSAccess().getOwnedExpressionCSExpCSParserRuleCall_2_0()); }
	ruleExpCS{ after(grammarAccess.getLambdaLiteralExpCSAccess().getOwnedExpressionCSExpCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralExpCS__OwnedTypeAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getOwnedTypeMapTypeCSParserRuleCall_0_0()); }
	ruleMapTypeCS{ after(grammarAccess.getMapLiteralExpCSAccess().getOwnedTypeMapTypeCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralExpCS__OwnedPartsAssignment_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getOwnedPartsMapLiteralPartCSParserRuleCall_2_0_0()); }
	ruleMapLiteralPartCS{ after(grammarAccess.getMapLiteralExpCSAccess().getOwnedPartsMapLiteralPartCSParserRuleCall_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralExpCS__OwnedPartsAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralExpCSAccess().getOwnedPartsMapLiteralPartCSParserRuleCall_2_1_1_0()); }
	ruleMapLiteralPartCS{ after(grammarAccess.getMapLiteralExpCSAccess().getOwnedPartsMapLiteralPartCSParserRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralPartCS__OwnedKeyAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralPartCSAccess().getOwnedKeyExpCSParserRuleCall_0_0()); }
	ruleExpCS{ after(grammarAccess.getMapLiteralPartCSAccess().getOwnedKeyExpCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MapLiteralPartCS__OwnedValueAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMapLiteralPartCSAccess().getOwnedValueExpCSParserRuleCall_2_0()); }
	ruleExpCS{ after(grammarAccess.getMapLiteralPartCSAccess().getOwnedValueExpCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExpCS__OwnedPartsAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralExpCSAccess().getOwnedPartsTupleLiteralPartCSParserRuleCall_2_0()); }
	ruleTupleLiteralPartCS{ after(grammarAccess.getTupleLiteralExpCSAccess().getOwnedPartsTupleLiteralPartCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExpCS__OwnedPartsAssignment_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralExpCSAccess().getOwnedPartsTupleLiteralPartCSParserRuleCall_3_1_0()); }
	ruleTupleLiteralPartCS{ after(grammarAccess.getTupleLiteralExpCSAccess().getOwnedPartsTupleLiteralPartCSParserRuleCall_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPartCS__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralPartCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getTupleLiteralPartCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPartCS__OwnedTypeAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralPartCSAccess().getOwnedTypeTypeExpCSParserRuleCall_1_1_0()); }
	ruleTypeExpCS{ after(grammarAccess.getTupleLiteralPartCSAccess().getOwnedTypeTypeExpCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPartCS__OwnedInitExpressionAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTupleLiteralPartCSAccess().getOwnedInitExpressionExpCSParserRuleCall_3_0()); }
	ruleExpCS{ after(grammarAccess.getTupleLiteralPartCSAccess().getOwnedInitExpressionExpCSParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NumberLiteralExpCS__SymbolAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNumberLiteralExpCSAccess().getSymbolNUMBER_LITERALParserRuleCall_0()); }
	ruleNUMBER_LITERAL{ after(grammarAccess.getNumberLiteralExpCSAccess().getSymbolNUMBER_LITERALParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StringLiteralExpCS__SegmentsAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStringLiteralExpCSAccess().getSegmentsStringLiteralParserRuleCall_0()); }
	ruleStringLiteral{ after(grammarAccess.getStringLiteralExpCSAccess().getSegmentsStringLiteralParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanLiteralExpCS__SymbolAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolTrueKeyword_0_0()); }
(
{ before(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolTrueKeyword_0_0()); }

	'true' 

{ after(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolTrueKeyword_0_0()); }
)

{ after(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolTrueKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanLiteralExpCS__SymbolAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolFalseKeyword_1_0()); }
(
{ before(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolFalseKeyword_1_0()); }

	'false' 

{ after(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolFalseKeyword_1_0()); }
)

{ after(grammarAccess.getBooleanLiteralExpCSAccess().getSymbolFalseKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeLiteralWithMultiplicityCS__OwnedMultiplicityAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeLiteralWithMultiplicityCSAccess().getOwnedMultiplicityMultiplicityCSParserRuleCall_1_0()); }
	ruleMultiplicityCS{ after(grammarAccess.getTypeLiteralWithMultiplicityCSAccess().getOwnedMultiplicityMultiplicityCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeLiteralExpCS__OwnedTypeAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeLiteralExpCSAccess().getOwnedTypeTypeLiteralWithMultiplicityCSParserRuleCall_0()); }
	ruleTypeLiteralWithMultiplicityCS{ after(grammarAccess.getTypeLiteralExpCSAccess().getOwnedTypeTypeLiteralWithMultiplicityCSParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeNameExpCS__OwnedPathNameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeNameExpCSAccess().getOwnedPathNamePathNameCSParserRuleCall_0_0()); }
	rulePathNameCS{ after(grammarAccess.getTypeNameExpCSAccess().getOwnedPathNamePathNameCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeNameExpCS__OwnedCurlyBracketedClauseAssignment_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeNameExpCSAccess().getOwnedCurlyBracketedClauseCurlyBracketedClauseCSParserRuleCall_1_0_0()); }
	ruleCurlyBracketedClauseCS{ after(grammarAccess.getTypeNameExpCSAccess().getOwnedCurlyBracketedClauseCurlyBracketedClauseCSParserRuleCall_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeNameExpCS__OwnedPatternGuardAssignment_1_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeNameExpCSAccess().getOwnedPatternGuardExpCSParserRuleCall_1_1_1_0()); }
	ruleExpCS{ after(grammarAccess.getTypeNameExpCSAccess().getOwnedPatternGuardExpCSParserRuleCall_1_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeExpCS__OwnedMultiplicityAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeExpCSAccess().getOwnedMultiplicityMultiplicityCSParserRuleCall_1_0()); }
	ruleMultiplicityCS{ after(grammarAccess.getTypeExpCSAccess().getOwnedMultiplicityMultiplicityCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ExpCS__NameAssignment_0_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExpCSAccess().getNameBinaryOperatorNameParserRuleCall_0_1_1_0()); }
	ruleBinaryOperatorName{ after(grammarAccess.getExpCSAccess().getNameBinaryOperatorNameParserRuleCall_0_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ExpCS__OwnedRightAssignment_0_1_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getExpCSAccess().getOwnedRightExpCSParserRuleCall_0_1_2_0()); }
	ruleExpCS{ after(grammarAccess.getExpCSAccess().getOwnedRightExpCSParserRuleCall_0_1_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedLetExpCS__NameAssignment_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedLetExpCSAccess().getNameUnaryOperatorNameParserRuleCall_0_1_0()); }
	ruleUnaryOperatorName{ after(grammarAccess.getPrefixedLetExpCSAccess().getNameUnaryOperatorNameParserRuleCall_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedLetExpCS__OwnedRightAssignment_0_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedLetExpCSAccess().getOwnedRightPrefixedLetExpCSParserRuleCall_0_2_0()); }
	rulePrefixedLetExpCS{ after(grammarAccess.getPrefixedLetExpCSAccess().getOwnedRightPrefixedLetExpCSParserRuleCall_0_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedPrimaryExpCS__NameAssignment_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedPrimaryExpCSAccess().getNameUnaryOperatorNameParserRuleCall_0_1_0()); }
	ruleUnaryOperatorName{ after(grammarAccess.getPrefixedPrimaryExpCSAccess().getNameUnaryOperatorNameParserRuleCall_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrefixedPrimaryExpCS__OwnedRightAssignment_0_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefixedPrimaryExpCSAccess().getOwnedRightPrefixedPrimaryExpCSParserRuleCall_0_2_0()); }
	rulePrefixedPrimaryExpCS{ after(grammarAccess.getPrefixedPrimaryExpCSAccess().getOwnedRightPrefixedPrimaryExpCSParserRuleCall_0_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__OwnedPathNameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getOwnedPathNamePathNameCSParserRuleCall_0_0()); }
	rulePathNameCS{ after(grammarAccess.getNameExpCSAccess().getOwnedPathNamePathNameCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__OwnedSquareBracketedClausesAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getOwnedSquareBracketedClausesSquareBracketedClauseCSParserRuleCall_1_0()); }
	ruleSquareBracketedClauseCS{ after(grammarAccess.getNameExpCSAccess().getOwnedSquareBracketedClausesSquareBracketedClauseCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__OwnedRoundBracketedClauseAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getOwnedRoundBracketedClauseRoundBracketedClauseCSParserRuleCall_2_0()); }
	ruleRoundBracketedClauseCS{ after(grammarAccess.getNameExpCSAccess().getOwnedRoundBracketedClauseRoundBracketedClauseCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__OwnedCurlyBracketedClauseAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getOwnedCurlyBracketedClauseCurlyBracketedClauseCSParserRuleCall_3_0()); }
	ruleCurlyBracketedClauseCS{ after(grammarAccess.getNameExpCSAccess().getOwnedCurlyBracketedClauseCurlyBracketedClauseCSParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NameExpCS__IsPreAssignment_4_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNameExpCSAccess().getIsPreCommercialAtKeyword_4_0_0()); }
(
{ before(grammarAccess.getNameExpCSAccess().getIsPreCommercialAtKeyword_4_0_0()); }

	'@' 

{ after(grammarAccess.getNameExpCSAccess().getIsPreCommercialAtKeyword_4_0_0()); }
)

{ after(grammarAccess.getNameExpCSAccess().getIsPreCommercialAtKeyword_4_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__OwnedPartsAssignment_2_0_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getOwnedPartsShadowPartCSParserRuleCall_2_0_0_0()); }
	ruleShadowPartCS{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getOwnedPartsShadowPartCSParserRuleCall_2_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__OwnedPartsAssignment_2_0_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getOwnedPartsShadowPartCSParserRuleCall_2_0_1_1_0()); }
	ruleShadowPartCS{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getOwnedPartsShadowPartCSParserRuleCall_2_0_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CurlyBracketedClauseCS__ValueAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCurlyBracketedClauseCSAccess().getValueStringLiteralParserRuleCall_2_1_0()); }
	ruleStringLiteral{ after(grammarAccess.getCurlyBracketedClauseCSAccess().getValueStringLiteralParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingArgCSParserRuleCall_2_0_0()); }
	ruleNavigatingArgCS{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingArgCSParserRuleCall_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingCommaArgCSParserRuleCall_2_1_0()); }
	ruleNavigatingCommaArgCS{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingCommaArgCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_2_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingSemiArgCSParserRuleCall_2_2_0_0()); }
	ruleNavigatingSemiArgCS{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingSemiArgCSParserRuleCall_2_2_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingCommaArgCSParserRuleCall_2_2_1_0()); }
	ruleNavigatingCommaArgCS{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingCommaArgCSParserRuleCall_2_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_3_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingBarArgCSParserRuleCall_2_3_0_0()); }
	ruleNavigatingBarArgCS{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingBarArgCSParserRuleCall_2_3_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketedClauseCS__OwnedArgumentsAssignment_2_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingCommaArgCSParserRuleCall_2_3_1_0()); }
	ruleNavigatingCommaArgCS{ after(grammarAccess.getRoundBracketedClauseCSAccess().getOwnedArgumentsNavigatingCommaArgCSParserRuleCall_2_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketedClauseCS__OwnedTermsAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSquareBracketedClauseCSAccess().getOwnedTermsExpCSParserRuleCall_1_0()); }
	ruleExpCS{ after(grammarAccess.getSquareBracketedClauseCSAccess().getOwnedTermsExpCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketedClauseCS__OwnedTermsAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSquareBracketedClauseCSAccess().getOwnedTermsExpCSParserRuleCall_2_1_0()); }
	ruleExpCS{ after(grammarAccess.getSquareBracketedClauseCSAccess().getOwnedTermsExpCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__OwnedNameExpressionAssignment_0_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getOwnedNameExpressionNavigatingArgExpCSParserRuleCall_0_0_0()); }
	ruleNavigatingArgExpCS{ after(grammarAccess.getNavigatingArgCSAccess().getOwnedNameExpressionNavigatingArgExpCSParserRuleCall_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__OwnedTypeAssignment_0_1_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getOwnedTypeTypeExpCSParserRuleCall_0_1_0_1_0()); }
	ruleTypeExpCS{ after(grammarAccess.getNavigatingArgCSAccess().getOwnedTypeTypeExpCSParserRuleCall_0_1_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__OwnedInitExpressionAssignment_0_1_0_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_0_1_0_2_1_0()); }
	ruleExpCS{ after(grammarAccess.getNavigatingArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_0_1_0_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__OwnedInitExpressionAssignment_0_1_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_0_1_1_1_0()); }
	ruleExpCS{ after(grammarAccess.getNavigatingArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_0_1_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingArgCS__OwnedTypeAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingArgCSAccess().getOwnedTypeTypeExpCSParserRuleCall_1_1_0()); }
	ruleTypeExpCS{ after(grammarAccess.getNavigatingArgCSAccess().getOwnedTypeTypeExpCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__PrefixAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getPrefixVerticalLineKeyword_0_0()); }
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getPrefixVerticalLineKeyword_0_0()); }

	'|' 

{ after(grammarAccess.getNavigatingBarArgCSAccess().getPrefixVerticalLineKeyword_0_0()); }
)

{ after(grammarAccess.getNavigatingBarArgCSAccess().getPrefixVerticalLineKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__OwnedNameExpressionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getOwnedNameExpressionNavigatingArgExpCSParserRuleCall_1_0()); }
	ruleNavigatingArgExpCS{ after(grammarAccess.getNavigatingBarArgCSAccess().getOwnedNameExpressionNavigatingArgExpCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__OwnedTypeAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_1_0()); }
	ruleTypeExpCS{ after(grammarAccess.getNavigatingBarArgCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingBarArgCS__OwnedInitExpressionAssignment_2_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingBarArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_2_1_0()); }
	ruleExpCS{ after(grammarAccess.getNavigatingBarArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__PrefixAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getPrefixCommaKeyword_0_0()); }
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getPrefixCommaKeyword_0_0()); }

	',' 

{ after(grammarAccess.getNavigatingCommaArgCSAccess().getPrefixCommaKeyword_0_0()); }
)

{ after(grammarAccess.getNavigatingCommaArgCSAccess().getPrefixCommaKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__OwnedNameExpressionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedNameExpressionNavigatingArgExpCSParserRuleCall_1_0()); }
	ruleNavigatingArgExpCS{ after(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedNameExpressionNavigatingArgExpCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__OwnedTypeAssignment_2_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_0_1_0()); }
	ruleTypeExpCS{ after(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_0_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__OwnedInitExpressionAssignment_2_0_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_0_2_1_0()); }
	ruleExpCS{ after(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_0_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingCommaArgCS__OwnedInitExpressionAssignment_2_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_1_1_0()); }
	ruleExpCS{ after(grammarAccess.getNavigatingCommaArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__PrefixAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getPrefixSemicolonKeyword_0_0()); }
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getPrefixSemicolonKeyword_0_0()); }

	';' 

{ after(grammarAccess.getNavigatingSemiArgCSAccess().getPrefixSemicolonKeyword_0_0()); }
)

{ after(grammarAccess.getNavigatingSemiArgCSAccess().getPrefixSemicolonKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__OwnedNameExpressionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedNameExpressionNavigatingArgExpCSParserRuleCall_1_0()); }
	ruleNavigatingArgExpCS{ after(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedNameExpressionNavigatingArgExpCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__OwnedTypeAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_1_0()); }
	ruleTypeExpCS{ after(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingSemiArgCS__OwnedInitExpressionAssignment_2_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_2_1_0()); }
	ruleExpCS{ after(grammarAccess.getNavigatingSemiArgCSAccess().getOwnedInitExpressionExpCSParserRuleCall_2_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__OwnedConditionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getOwnedConditionAlternatives_1_0()); }
(rule__IfExpCS__OwnedConditionAlternatives_1_0)
{ after(grammarAccess.getIfExpCSAccess().getOwnedConditionAlternatives_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__OwnedThenExpressionAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getOwnedThenExpressionExpCSParserRuleCall_3_0()); }
	ruleExpCS{ after(grammarAccess.getIfExpCSAccess().getOwnedThenExpressionExpCSParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__OwnedIfThenExpressionsAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getOwnedIfThenExpressionsElseIfThenExpCSParserRuleCall_4_0()); }
	ruleElseIfThenExpCS{ after(grammarAccess.getIfExpCSAccess().getOwnedIfThenExpressionsElseIfThenExpCSParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__IfExpCS__OwnedElseExpressionAssignment_6
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getIfExpCSAccess().getOwnedElseExpressionExpCSParserRuleCall_6_0()); }
	ruleExpCS{ after(grammarAccess.getIfExpCSAccess().getOwnedElseExpressionExpCSParserRuleCall_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ElseIfThenExpCS__OwnedConditionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getElseIfThenExpCSAccess().getOwnedConditionExpCSParserRuleCall_1_0()); }
	ruleExpCS{ after(grammarAccess.getElseIfThenExpCSAccess().getOwnedConditionExpCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ElseIfThenExpCS__OwnedThenExpressionAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getElseIfThenExpCSAccess().getOwnedThenExpressionExpCSParserRuleCall_3_0()); }
	ruleExpCS{ after(grammarAccess.getElseIfThenExpCSAccess().getOwnedThenExpressionExpCSParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__LetExpCS__OwnedVariablesAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetExpCSAccess().getOwnedVariablesLetVariableCSParserRuleCall_1_0()); }
	ruleLetVariableCS{ after(grammarAccess.getLetExpCSAccess().getOwnedVariablesLetVariableCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__LetExpCS__OwnedVariablesAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetExpCSAccess().getOwnedVariablesLetVariableCSParserRuleCall_2_1_0()); }
	ruleLetVariableCS{ after(grammarAccess.getLetExpCSAccess().getOwnedVariablesLetVariableCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__LetExpCS__OwnedInExpressionAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetExpCSAccess().getOwnedInExpressionExpCSParserRuleCall_4_0()); }
	ruleExpCS{ after(grammarAccess.getLetExpCSAccess().getOwnedInExpressionExpCSParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariableCS__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetVariableCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getLetVariableCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariableCS__OwnedRoundBracketedClauseAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetVariableCSAccess().getOwnedRoundBracketedClauseRoundBracketedClauseCSParserRuleCall_1_0()); }
	ruleRoundBracketedClauseCS{ after(grammarAccess.getLetVariableCSAccess().getOwnedRoundBracketedClauseRoundBracketedClauseCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariableCS__OwnedTypeAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetVariableCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_1_0()); }
	ruleTypeExpCS{ after(grammarAccess.getLetVariableCSAccess().getOwnedTypeTypeExpCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariableCS__OwnedInitExpressionAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetVariableCSAccess().getOwnedInitExpressionExpCSParserRuleCall_4_0()); }
	ruleExpCS{ after(grammarAccess.getLetVariableCSAccess().getOwnedInitExpressionExpCSParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NestedExpCS__OwnedExpressionAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNestedExpCSAccess().getOwnedExpressionExpCSParserRuleCall_1_0()); }
	ruleExpCS{ after(grammarAccess.getNestedExpCSAccess().getOwnedExpressionExpCSParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityBoundsCS__LowerBoundAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityBoundsCSAccess().getLowerBoundLOWERParserRuleCall_0_0()); }
	ruleLOWER{ after(grammarAccess.getMultiplicityBoundsCSAccess().getLowerBoundLOWERParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityBoundsCS__UpperBoundAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityBoundsCSAccess().getUpperBoundUPPERParserRuleCall_1_1_0()); }
	ruleUPPER{ after(grammarAccess.getMultiplicityBoundsCSAccess().getUpperBoundUPPERParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityCS__IsNullFreeAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityCSAccess().getIsNullFree1Keyword_2_1_0()); }
(
{ before(grammarAccess.getMultiplicityCSAccess().getIsNullFree1Keyword_2_1_0()); }

	'|1' 

{ after(grammarAccess.getMultiplicityCSAccess().getIsNullFree1Keyword_2_1_0()); }
)

{ after(grammarAccess.getMultiplicityCSAccess().getIsNullFree1Keyword_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__MultiplicityStringCS__StringBoundsAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsAlternatives_0()); }
(rule__MultiplicityStringCS__StringBoundsAlternatives_0)
{ after(grammarAccess.getMultiplicityStringCSAccess().getStringBoundsAlternatives_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameCS__OwnedPathElementsAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPathNameCSAccess().getOwnedPathElementsFirstPathElementCSParserRuleCall_0_0()); }
	ruleFirstPathElementCS{ after(grammarAccess.getPathNameCSAccess().getOwnedPathElementsFirstPathElementCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameCS__OwnedPathElementsAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPathNameCSAccess().getOwnedPathElementsNextPathElementCSParserRuleCall_1_1_0()); }
	ruleNextPathElementCS{ after(grammarAccess.getPathNameCSAccess().getOwnedPathElementsNextPathElementCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__FirstPathElementCS__ReferredElementAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFirstPathElementCSAccess().getReferredElementNamedElementCrossReference_0()); }
(
{ before(grammarAccess.getFirstPathElementCSAccess().getReferredElementNamedElementUnrestrictedNameParserRuleCall_0_1()); }
	ruleUnrestrictedName{ after(grammarAccess.getFirstPathElementCSAccess().getReferredElementNamedElementUnrestrictedNameParserRuleCall_0_1()); }
)
{ after(grammarAccess.getFirstPathElementCSAccess().getReferredElementNamedElementCrossReference_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__NextPathElementCS__ReferredElementAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNextPathElementCSAccess().getReferredElementNamedElementCrossReference_0()); }
(
{ before(grammarAccess.getNextPathElementCSAccess().getReferredElementNamedElementUnreservedNameParserRuleCall_0_1()); }
	ruleUnreservedName{ after(grammarAccess.getNextPathElementCSAccess().getReferredElementNamedElementUnreservedNameParserRuleCall_0_1()); }
)
{ after(grammarAccess.getNextPathElementCSAccess().getReferredElementNamedElementCrossReference_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBindingCS__OwnedSubstitutionsAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTemplateBindingCSAccess().getOwnedSubstitutionsTemplateParameterSubstitutionCSParserRuleCall_0_0()); }
	ruleTemplateParameterSubstitutionCS{ after(grammarAccess.getTemplateBindingCSAccess().getOwnedSubstitutionsTemplateParameterSubstitutionCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBindingCS__OwnedSubstitutionsAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTemplateBindingCSAccess().getOwnedSubstitutionsTemplateParameterSubstitutionCSParserRuleCall_1_1_0()); }
	ruleTemplateParameterSubstitutionCS{ after(grammarAccess.getTemplateBindingCSAccess().getOwnedSubstitutionsTemplateParameterSubstitutionCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBindingCS__OwnedMultiplicityAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTemplateBindingCSAccess().getOwnedMultiplicityMultiplicityCSParserRuleCall_2_0()); }
	ruleMultiplicityCS{ after(grammarAccess.getTemplateBindingCSAccess().getOwnedMultiplicityMultiplicityCSParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateParameterSubstitutionCS__OwnedActualParameterAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTemplateParameterSubstitutionCSAccess().getOwnedActualParameterTypeRefCSParserRuleCall_0()); }
	ruleTypeRefCS{ after(grammarAccess.getTemplateParameterSubstitutionCSAccess().getOwnedActualParameterTypeRefCSParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__TypeParameterCS__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeParameterCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
	ruleUnrestrictedName{ after(grammarAccess.getTypeParameterCSAccess().getNameUnrestrictedNameParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeParameterCS__OwnedExtendsAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeParameterCSAccess().getOwnedExtendsTypedRefCSParserRuleCall_1_1_0()); }
	ruleTypedRefCS{ after(grammarAccess.getTypeParameterCSAccess().getOwnedExtendsTypedRefCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeParameterCS__OwnedExtendsAssignment_1_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeParameterCSAccess().getOwnedExtendsTypedRefCSParserRuleCall_1_2_1_0()); }
	ruleTypedRefCS{ after(grammarAccess.getTypeParameterCSAccess().getOwnedExtendsTypedRefCSParserRuleCall_1_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypedTypeRefCS__OwnedPathNameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypedTypeRefCSAccess().getOwnedPathNamePathNameCSParserRuleCall_0_0()); }
	rulePathNameCS{ after(grammarAccess.getTypedTypeRefCSAccess().getOwnedPathNamePathNameCSParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypedTypeRefCS__OwnedBindingAssignment_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypedTypeRefCSAccess().getOwnedBindingTemplateBindingCSParserRuleCall_1_1_0()); }
	ruleTemplateBindingCS{ after(grammarAccess.getTypedTypeRefCSAccess().getOwnedBindingTemplateBindingCSParserRuleCall_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__WildcardTypeRefCS__OwnedExtendsAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWildcardTypeRefCSAccess().getOwnedExtendsTypedRefCSParserRuleCall_2_1_0()); }
	ruleTypedRefCS{ after(grammarAccess.getWildcardTypeRefCSAccess().getOwnedExtendsTypedRefCSParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


fragment RULE_ESCAPED_CHARACTER : '\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\');

fragment RULE_LETTER_CHARACTER : ('a'..'z'|'A'..'Z'|'_');

RULE_DOUBLE_QUOTED_STRING : '"' (RULE_ESCAPED_CHARACTER|~(('\\'|'"')))* '"';

RULE_SINGLE_QUOTED_STRING : '\'' (RULE_ESCAPED_CHARACTER|~(('\\'|'\'')))* '\'';

RULE_ML_SINGLE_QUOTED_STRING : '/\'' ( options {greedy=false;} : . )*'\'/';

RULE_SIMPLE_ID : RULE_LETTER_CHARACTER (RULE_LETTER_CHARACTER|'0'..'9')*;

RULE_ESCAPED_ID : '_' RULE_SINGLE_QUOTED_STRING;

RULE_INT : ('0'..'9')+;

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '--' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

