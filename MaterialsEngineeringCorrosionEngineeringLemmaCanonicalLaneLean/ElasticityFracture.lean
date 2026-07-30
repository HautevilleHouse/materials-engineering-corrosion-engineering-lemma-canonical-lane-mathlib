import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  youngModulus : Prop
  poissonRatio : Prop
  stressStrainCurve : Prop
  fractureToughness : Prop
  crackPropagation : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  stressStrainCurveClosed : E.stressStrainCurve
  fractureToughnessClosed : E.fractureToughness
  crackPropagationClosed : E.crackPropagation

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.stressStrainCurve ∧ E.fractureToughness ∧ E.crackPropagation

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.youngModulusClosed (And.intro Ev.poissonRatioClosed (And.intro Ev.stressStrainCurveClosed (And.intro Ev.fractureToughnessClosed Ev.crackPropagationClosed)))

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse