import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure CorrosionAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  corrosionResistant : Prop
  passiveFilmFormation : Prop
  pittingPotential : Prop
  conclusion : corrosionResistant ∧ passiveFilmFormation ∧ pittingPotential

structure CorrosionEndgameState where
  object : CorrosionAdmittedObject

def CorrosionWitnessClosed (O : CorrosionAdmittedObject) : Prop :=
  O.corrosionResistant ∧ O.passiveFilmFormation ∧ O.pittingPotential

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
