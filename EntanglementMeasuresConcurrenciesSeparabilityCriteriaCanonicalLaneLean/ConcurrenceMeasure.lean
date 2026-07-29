import canonicalLaneMathlib.AdmissibleClass
import EntanglementAdmissibleClass

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure ConcurrencePackage (A : AdmissibleClass) where
  concurrenceValue : ℝ
  lowerBound : ℝ
  upperBound : ℝ
  normalized : Prop
  separable iff concurrenceValue = 0 : Prop
  fullyEntangled iff concurrenceValue = 1 : Prop

structure ConcurrenceEvidence (A : AdmissibleClass) (C : ConcurrencePackage A) where
  normalizedClosed : C.normalized
  separableClosed : C.separable
  fullyEntangledClosed : C.fullyEntangled

def ConcurrenceClosed (A : AdmissibleClass) (C : ConcurrencePackage A) : Prop :=
  C.normalized ∧ C.separable ∧ C.fullyEntangled

theorem concurrence_closed_from_evidence (A : AdmissibleClass) (C : ConcurrencePackage A) (E : ConcurrenceEvidence A C) :
  ConcurrenceClosed A C := by
  exact And.intro E.normalizedClosed (And.intro E.separableClosed E.fullyEntangledClosed)

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse