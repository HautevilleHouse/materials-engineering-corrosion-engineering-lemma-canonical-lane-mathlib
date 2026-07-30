import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type u
  unitCell : Type v
  bravaisLattice : Prop
  spaceGroup : Prop
  crystalSymmetry : Prop
  xrayDiffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  spaceGroupClosed : C.spaceGroup
  crystalSymmetryClosed : C.crystalSymmetry
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.spaceGroup ∧ C.crystalSymmetry ∧ C.xrayDiffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.spaceGroupClosed (And.intro E.crystalSymmetryClosed E.xrayDiffractionPatternClosed))

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse