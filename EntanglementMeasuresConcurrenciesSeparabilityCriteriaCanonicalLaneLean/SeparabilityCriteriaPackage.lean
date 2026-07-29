import EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean.ConcurrencePackage

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure SeparabilityCriterion {A : AdmissibleClass} (C : ConcurrencePackage A) where
  pPTCriterion : Prop
  cCNRCriterion : Prop
  realignmentCriterion : Prop
  majorizationCriterion : Prop

def SeparabilityCriteriaClosed {A : AdmissibleClass} {C : ConcurrencePackage A} (S : SeparabilityCriterion C) : Prop :=
  S.pPTCriterion ∧ S.cCNRCriterion ∧ S.realignmentCriterion ∧ S.majorizationCriterion

structure SeparabilityEvidence {A : AdmissibleClass} {C : ConcurrencePackage A} (S : SeparabilityCriterion C) where
  pPTCriterionClosed : S.pPTCriterion
  cCNRCriterionClosed : S.cCNRCriterion
  realignmentCriterionClosed : S.realignmentCriterion
  majorizationCriterionClosed : S.majorizationCriterion

theorem separability_criteria_closed_from_evidence {A : AdmissibleClass} {C : ConcurrencePackage A} (S : SeparabilityCriterion C) (E : SeparabilityEvidence S) : SeparabilityCriteriaClosed S :=
  And.intro E.pPTCriterionClosed (And.intro E.cCNRCriterionClosed (And.intro E.realignmentCriterionClosed E.majorizationCriterionClosed))

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse
