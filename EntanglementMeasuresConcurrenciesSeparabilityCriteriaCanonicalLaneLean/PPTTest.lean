import HautevilleHouse.EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean.EntanglementWitness

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure PPTTestPackage where
  densityMatrix : Matrix ℂ (Fin 4) (Fin 4) -- for two qubits
  partialTransposePositive : Prop
  impliesSeparable : Prop

deriving Repr

structure PPTTestEvidence (P : PPTTestPackage) where
  partialTransposePositiveClosed : P.partialTransposePositive
  impliesSeparableClosed : P.impliesSeparable

def PPTTestClosed (P : PPTTestPackage) : Prop :=
  P.partialTransposePositive ∧ P.impliesSeparable

theorem ppt_test_closed_from_evidence (P : PPTTestPackage) (E : PPTTestEvidence P) : PPTTestClosed P := by
  exact And.intro E.partialTransposePositiveClosed E.impliesSeparableClosed

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse