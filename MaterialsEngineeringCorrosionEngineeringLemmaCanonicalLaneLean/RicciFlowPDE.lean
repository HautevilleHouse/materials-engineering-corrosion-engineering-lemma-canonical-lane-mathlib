import HautevilleHouse.MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure RicciFlowPDEPackage (G : RiemannianCurvaturePackage) where
  timeParameter : Type u
  metricAt : timeParameter → Type v
  initialMetricMatches : Prop
  differentiableMetricFamily : Prop
  ricciFlowEquation : Prop
  maximalTimeInterval : Prop

structure RicciFlowPDEEvidence {G : RiemannianCurvaturePackage}
    (F : RicciFlowPDEPackage G) where
  initialMetricMatchesClosed : F.initialMetricMatches
  differentiableMetricFamilyClosed : F.differentiableMetricFamily
  ricciFlowEquationClosed : F.ricciFlowEquation
  maximalTimeIntervalClosed : F.maximalTimeInterval

def RicciFlowPDEClosed {G : RiemannianCurvaturePackage}
    (F : RicciFlowPDEPackage G) : Prop :=
  F.initialMetricMatches ∧
  F.differentiableMetricFamily ∧
  F.ricciFlowEquation ∧
  F.maximalTimeInterval

theorem ricci_flow_pde_closed_from_evidence
    {G : RiemannianCurvaturePackage} (F : RicciFlowPDEPackage G)
    (E : RicciFlowPDEEvidence F) : RicciFlowPDEClosed F := by
  exact And.intro E.initialMetricMatchesClosed
    (And.intro E.differentiableMetricFamilyClosed
      (And.intro E.ricciFlowEquationClosed E.maximalTimeIntervalClosed))

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse