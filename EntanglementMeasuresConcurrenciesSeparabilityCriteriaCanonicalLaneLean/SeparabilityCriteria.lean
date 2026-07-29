import HautevilleHouse.EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean.ConcurrenceMeasure

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure SeparabilityCriteriaPackage where
  criterion : EntanglementSystem → Prop
  necessary : Bool
  sufficient : Bool
  witnessConcurrenceRelation : ConcurrenceMeasurePackage → Prop

deriving Repr

structure SeparabilityCriteriaEvidence (S : SeparabilityCriteriaPackage) where
  necessaryClosed : S.necessary
  sufficientClosed : S.sufficient

def SeparabilityCriteriaClosed (S : SeparabilityCriteriaPackage) : Prop :=
  S.necessary ∧ S.sufficient

theorem separability_criteria_closed_from_evidence (S : SeparabilityCriteriaPackage) (E : SeparabilityCriteriaEvidence S) :
    SeparabilityCriteriaClosed S := by
  exact And.intro E.necessaryClosed E.sufficientClosed

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse