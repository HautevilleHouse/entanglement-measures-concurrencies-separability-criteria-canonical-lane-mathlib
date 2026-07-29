import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure EntanglementMeasure where
  carrier : Type
  dimension : Nat
  concurrence : carrier → ℝ
  separabilityCriterion : carrier → Prop
  monotonicityUnderLOCC : Prop
  convexity : Prop

structure EntanglementMeasureEvidence (M : EntanglementMeasure) where
  monotonicityUnderLOCCClosed : M.monotonicityUnderLOCC
  convexityClosed : M.convexity

def EntanglementMeasureClosed (M : EntanglementMeasure) : Prop :=
  M.monotonicityUnderLOCC ∧ M.convexity

theorem entanglement_measure_closed_from_evidence
    (M : EntanglementMeasure) (E : EntanglementMeasureEvidence M) :
    EntanglementMeasureClosed M := by
  exact And.intro E.monotonicityUnderLOCCClosed E.convexityClosed

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse
