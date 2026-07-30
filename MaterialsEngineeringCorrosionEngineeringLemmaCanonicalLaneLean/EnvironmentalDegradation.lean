import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean

structure EnvironmentalDegradationPackage where
  pittingCorrosion : Prop
  creviceCorrosion : Prop
  stressCorrosionCracking : Prop
  hydrogenEmbrittlement : Prop
  intergranularCorrosion : Prop

structure EnvironmentalDegradationEvidence (E : EnvironmentalDegradationPackage) where
  pittingCorrosionClosed : E.pittingCorrosion
  creviceCorrosionClosed : E.creviceCorrosion
  stressCorrosionCrackingClosed : E.stressCorrosionCracking
  hydrogenEmbrittlementClosed : E.hydrogenEmbrittlement
  intergranularCorrosionClosed : E.intergranularCorrosion

def EnvironmentalDegradationClosed (E : EnvironmentalDegradationPackage) : Prop :=
  E.pittingCorrosion ∧ E.creviceCorrosion ∧ E.stressCorrosionCracking ∧ E.hydrogenEmbrittlement ∧ E.intergranularCorrosion

theorem environmental_degradation_closed_from_evidence (E : EnvironmentalDegradationPackage) (Ev : EnvironmentalDegradationEvidence E) : EnvironmentalDegradationClosed E := by
  exact And.intro Ev.pittingCorrosionClosed (And.intro Ev.creviceCorrosionClosed (And.intro Ev.stressCorrosionCrackingClosed (And.intro Ev.hydrogenEmbrittlementClosed Ev.intergranularCorrosionClosed)))

end MaterialsEngineeringCorrosionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse