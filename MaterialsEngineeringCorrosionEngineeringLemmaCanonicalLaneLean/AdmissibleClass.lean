import HautevilleHouse.MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : MaterialsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MaterialsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse