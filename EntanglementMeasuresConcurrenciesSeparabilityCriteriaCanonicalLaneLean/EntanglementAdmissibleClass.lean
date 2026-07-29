import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean

structure EntanglementSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedEntanglementObject where
  space : EntanglementSpace
  bipartiteDimension : ℕ
  densityMatrixSpace : Type
  positiveSemidefinite : Prop
  traceOne : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : AdmittedEntanglementObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EntanglementMeasuresConcurrenciesSeparabilityCriteriaCanonicalLaneLean
end HautevilleHouse