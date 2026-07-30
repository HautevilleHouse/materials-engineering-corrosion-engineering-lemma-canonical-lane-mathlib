import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  hooksLaw : Prop
  youngModulus : ℝ
  poissonRatio : ℝ
  yieldCriterion : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hooksLawClosed : E.hooksLaw
  yieldCriterionClosed : E.yieldCriterion

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hooksLaw ∧ E.yieldCriterion

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.hooksLawClosed Ev.yieldCriterionClosed

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse