import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure CorrosionKineticsPackage where
  electrodePotential : Type u
  currentDensity : Type v
  exchangeCurrentDensity : Type w
  tafelBehavior : Prop
  passivationRegime : Prop
  pittingInitiation : Prop

structure CorrosionKineticsEvidence (C : CorrosionKineticsPackage) where
  tafelBehaviorClosed : C.tafelBehavior
  passivationRegimeClosed : C.passivationRegime
  pittingInitiationClosed : C.pittingInitiation

def CorrosionKineticsClosed (C : CorrosionKineticsPackage) : Prop :=
  C.tafelBehavior ∧ C.passivationRegime ∧ C.pittingInitiation

theorem corrosion_kinetics_closed_from_evidence (C : CorrosionKineticsPackage)
    (E : CorrosionKineticsEvidence C) : CorrosionKineticsClosed C :=
  And.intro E.tafelBehaviorClosed (And.intro E.passivationRegimeClosed
    E.pittingInitiationClosed)

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse