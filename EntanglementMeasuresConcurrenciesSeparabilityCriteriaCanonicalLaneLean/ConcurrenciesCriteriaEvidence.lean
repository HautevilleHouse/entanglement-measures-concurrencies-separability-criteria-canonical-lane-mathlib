import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure ConcurrenciesCriteria where
  concordantConcurrence : ℝ → ℝ → Prop
  woottersFormula : Prop
  twoQubitSeparabilityCondition : Prop

structure ConcurrenciesCriteriaEvidence (C : ConcurrenciesCriteria) where
  woottersFormulaClosed : C.woottersFormula
  twoQubitSeparabilityConditionClosed : C.twoQubitSeparabilityCondition

def ConcurrenciesCriteriaClosed (C : ConcurrenciesCriteria) : Prop :=
  C.woottersFormula ∧ C.twoQubitSeparabilityCondition

theorem concurrencies_criteria_closed_from_evidence
    (C : ConcurrenciesCriteria) (E : ConcurrenciesCriteriaEvidence C) :
    ConcurrenciesCriteriaClosed C := by
  exact And.intro E.woottersFormulaClosed E.twoQubitSeparabilityConditionClosed

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse
