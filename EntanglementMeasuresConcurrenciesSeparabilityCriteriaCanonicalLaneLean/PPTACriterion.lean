import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure PPTACriterion where
  densityMatrix : Type u
  partialTranspose : densityMatrix → densityMatrix
  pptCondition : densityMatrix → Prop
  positivityCondition : densityMatrix → Prop
  separabilityImpliesPPT : Prop
  PPTImpliesSeparabilityFor2x2 : Prop

structure PPTACriterionEvidence (P : PPTACriterion) where
  pptConditionClosed : ∀ ρ, P.pptCondition ρ
  positivityConditionClosed : ∀ ρ, P.positivityCondition ρ
  separabilityImpliesPPTClosed : P.separabilityImpliesPPT
  PPTImpliesSeparabilityFor2x2Closed : P.PPTImpliesSeparabilityFor2x2

def PPTACriterionClosed (P : PPTACriterion) : Prop :=
  (∀ ρ, P.pptCondition ρ) ∧ (∀ ρ, P.positivityCondition ρ) ∧
  P.separabilityImpliesPPT ∧ P.PPTImpliesSeparabilityFor2x2

theorem pptCriterion_closed_from_evidence (P : PPTACriterion) (E : PPTACriterionEvidence P) :
  PPTACriterionClosed P := by
  exact And.intro (fun ρ => E.pptConditionClosed ρ) (And.intro (fun ρ => E.positivityConditionClosed ρ)
    (And.intro E.separabilityImpliesPPTClosed E.PPTImpliesSeparabilityFor2x2Closed))

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse