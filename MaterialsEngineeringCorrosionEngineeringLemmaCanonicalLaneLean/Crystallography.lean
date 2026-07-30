import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  unitCell : Type u
  bravaisLattice : Type v
  atomicPositions : Type w
  crystalSystem : Prop
  pointGroup : Prop
  spaceGroup : Prop
  symmetryOperations : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  crystalSystemClosed : C.crystalSystem
  pointGroupClosed : C.pointGroup
  spaceGroupClosed : C.spaceGroup
  symmetryOperationsClosed : C.symmetryOperations

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.crystalSystem ∧ C.pointGroup ∧ C.spaceGroup ∧ C.symmetryOperations

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C :=
  And.intro E.crystalSystemClosed (And.intro E.pointGroupClosed
    (And.intro E.spaceGroupClosed E.symmetryOperationsClosed))

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse