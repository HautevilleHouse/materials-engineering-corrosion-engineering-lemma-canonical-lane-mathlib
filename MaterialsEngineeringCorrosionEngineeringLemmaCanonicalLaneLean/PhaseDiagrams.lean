import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  compositionRange : Type v
  phases : Type w
  phaseBoundaries : Prop
  invariantReactions : Prop
  metastablePhases : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  invariantReactionsClosed : P.invariantReactions
  metastablePhasesClosed : P.metastablePhases

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.invariantReactions ∧ P.metastablePhases

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P :=
  And.intro E.phaseBoundariesClosed (And.intro E.invariantReactionsClosed
    E.metastablePhasesClosed)

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse