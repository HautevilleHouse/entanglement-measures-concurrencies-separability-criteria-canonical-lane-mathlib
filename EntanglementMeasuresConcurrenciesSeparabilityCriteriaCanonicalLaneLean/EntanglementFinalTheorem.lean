import canonicalLaneMathlib.AdmissibleClass
import BridgeLemmas

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

def ConstrainedEntanglementClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_entanglement_endgame (A : AdmissibleClass) :
  ConstrainedEntanglementClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse