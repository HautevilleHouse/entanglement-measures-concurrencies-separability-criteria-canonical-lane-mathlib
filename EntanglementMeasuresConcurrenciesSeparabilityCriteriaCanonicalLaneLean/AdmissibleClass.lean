import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure EntanglementSystem where
  carrier : Type
  dimension : Nat
  bipartite : Bool

deriving Repr

structure EntanglementAdmittedObject where
  system : EntanglementSystem
  separable : Prop
  entangled : Prop
  witnessExists : Prop
  conclusion : entangled

structure AdmissibleClass where
  object : EntanglementAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.entangled) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse