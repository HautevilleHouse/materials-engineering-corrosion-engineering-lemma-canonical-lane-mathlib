import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Nat
  phases : List String
  phaseBoundaries : Prop
  gibbsFreeEnergyMinimization : Prop
  tieLineConstruction : Prop
  leverRule : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyMinimizationClosed : P.gibbsFreeEnergyMinimization
  tieLineConstructionClosed : P.tieLineConstruction
  leverRuleClosed : P.leverRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.gibbsFreeEnergyMinimization ∧ P.tieLineConstruction ∧ P.leverRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.gibbsFreeEnergyMinimizationClosed (And.intro E.tieLineConstructionClosed E.leverRuleClosed))

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse