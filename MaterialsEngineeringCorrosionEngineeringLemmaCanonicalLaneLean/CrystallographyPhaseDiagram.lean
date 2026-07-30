import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  crystalSystem : String
  bravaisLattice : String
  spaceGroup : String
  latticeParameters : String
  phaseDiagram : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  crystalSystemClosed : C.crystalSystem = "cubic"
  bravaisLatticeClosed : C.bravaisLattice = "FCC"
  spaceGroupClosed : C.spaceGroup = "Fm-3m"
  latticeParametersClosed : C.latticeParameters = "a=3.615 Å"
  phaseDiagramClosed : C.phaseDiagram

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.crystalSystem = "cubic" ∧ C.bravaisLattice = "FCC" ∧ C.spaceGroup = "Fm-3m" ∧ C.latticeParameters = "a=3.615 Å" ∧ C.phaseDiagram

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.crystalSystemClosed (And.intro E.bravaisLatticeClosed (And.intro E.spaceGroupClosed (And.intro E.latticeParametersClosed E.phaseDiagramClosed)))

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse