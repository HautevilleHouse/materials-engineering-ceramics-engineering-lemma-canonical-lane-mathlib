import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPlot where
  temperatureRange : ℝ × ℝ
  compositionRange : ℝ × ℝ
  phaseBoundaries : List (ℝ → ℝ)
  eutecticPoint : Option (ℝ × ℝ)

structure PhaseDiagramEvidence (P : PhaseDiagramPlot) where
  temperatureRangeClosed : P.temperatureRange.1 < P.temperatureRange.2
  compositionRangeClosed : P.compositionRange.1 < P.compositionRange.2
  phaseBoundariesNonempty : P.phaseBoundaries ≠ []

def PhaseDiagramClosed (P : PhaseDiagramPlot) : Prop :=
  P.temperatureRange.1 < P.temperatureRange.2 ∧
  P.compositionRange.1 < P.compositionRange.2 ∧
  P.phaseBoundaries ≠ []

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPlot) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed (And.intro E.compositionRangeClosed E.phaseBoundariesNonempty)

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse