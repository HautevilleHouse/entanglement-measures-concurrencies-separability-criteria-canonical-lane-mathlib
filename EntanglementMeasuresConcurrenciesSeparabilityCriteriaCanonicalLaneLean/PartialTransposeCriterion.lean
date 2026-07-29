import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure PartialTransposeCriterionPackage (A : AdmissibleClass) where
  partialTranspose : Type u
  pptCondition : Prop
  entangledIfNegative : Prop
  evidence : pptCondition ∧ entangledIfNegative

def PartialTransposeCriterionClosed (A : AdmissibleClass) (P : PartialTransposeCriterionPackage A) : Prop :=
  P.pptCondition ∧ P.entangledIfNegative

theorem partial_transpose_criterion_closed_from_evidence (A : AdmissibleClass) (P : PartialTransposeCriterionPackage A) :
    PartialTransposeCriterionClosed A P := by
  exact P.evidence

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse