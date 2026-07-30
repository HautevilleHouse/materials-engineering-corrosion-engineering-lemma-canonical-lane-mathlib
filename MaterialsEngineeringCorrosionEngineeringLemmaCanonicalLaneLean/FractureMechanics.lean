import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGeometry : Type u
  stressIntensityFactor : Type v
  fractureToughness : Type w
  crackPropagationCriterion : Prop
  fatigueRegime : Prop
  environmentAssistedCracking : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  fatigueRegimeClosed : F.fatigueRegime
  environmentAssistedCrackingClosed : F.environmentAssistedCracking

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagationCriterion ∧ F.fatigueRegime ∧ F.environmentAssistedCracking

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F :=
  And.intro E.crackPropagationCriterionClosed (And.intro E.fatigueRegimeClosed
    E.environmentAssistedCrackingClosed)

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse