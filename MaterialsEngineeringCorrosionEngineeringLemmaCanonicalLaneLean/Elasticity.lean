import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressStrainRelation : Type u
  elasticModuli : Type v
  poissonRatio : Type w
  hookesLaw : Prop
  isotropyCondition : Prop
  linearElasticityRange : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  isotropyConditionClosed : E.isotropyCondition
  linearElasticityRangeClosed : E.linearElasticityRange

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.isotropyCondition ∧ E.linearElasticityRange

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E :=
  And.intro Ev.hookesLawClosed (And.intro Ev.isotropyConditionClosed
    Ev.linearElasticityRangeClosed)

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse