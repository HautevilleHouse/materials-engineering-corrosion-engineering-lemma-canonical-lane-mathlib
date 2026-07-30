import HautevilleHouse.MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure MaterialsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MaterialsAdmittedObject where
  space : MaterialsSpace
  corrosionResistant : Prop
  passivationLayer : Prop
  pitInitiationSuppressed : Prop
  conclusion : corrosionResistant ∧ passivationLayer ∧ pitInitiationSuppressed

structure MaterialsEndgameState where
  object : MaterialsAdmittedObject

def MaterialsWitnessClosed (O : MaterialsAdmittedObject) : Prop :=
  O.corrosionResistant ∧ O.passivationLayer ∧ O.pitInitiationSuppressed

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse