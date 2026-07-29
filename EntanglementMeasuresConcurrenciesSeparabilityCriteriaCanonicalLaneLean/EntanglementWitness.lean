import HautevilleHouse.EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean.SeparabilityCriteria

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure EntanglementWitnessPackage where
  witnessOperator : Matrix ℂ (Fin 2) (Fin 2) -- simplified, should be general
  expectedValueForSeparable : ℝ
  threshold : ℝ
  detectsEntanglement : Prop

deriving Repr

structure EntanglementWitnessEvidence (W : EntanglementWitnessPackage) where
  detectsEntanglementClosed : W.detectsEntanglement

def EntanglementWitnessClosed (W : EntanglementWitnessPackage) : Prop :=
  W.detectsEntanglement

theorem entanglement_witness_closed_from_evidence (W : EntanglementWitnessPackage) (E : EntanglementWitnessEvidence W) :
    EntanglementWitnessClosed W := by
  exact E.detectsEntanglementClosed

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse