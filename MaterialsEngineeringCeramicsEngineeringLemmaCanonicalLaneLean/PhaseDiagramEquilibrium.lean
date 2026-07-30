import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramEquilibrium where
  temperature : ℝ
  pressure : ℝ
  phaseRegion : String
  gibbsFreeEnergy : ℝ
  leverRuleApplicable : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramEquilibrium) where
  temperatureClosed : P.temperature ≥ 0
  pressureClosed : P.pressure ≥ 0
  phaseRegionClosed : P.phaseRegion ∈ {"solid", "liquid", "gas"}
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy ≠ 0
  leverRuleApplicableClosed : P.leverRuleApplicable

def PhaseDiagramClosed (P : PhaseDiagramEquilibrium) : Prop :=
  P.temperature ≥ 0 ∧ P.pressure ≥ 0 ∧ P.phaseRegion ∈ {"solid", "liquid", "gas"} ∧ P.gibbsFreeEnergy ≠ 0 ∧ P.leverRuleApplicable

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramEquilibrium) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P :=
  And.intro E.temperatureClosed (And.intro E.pressureClosed (And.intro E.phaseRegionClosed (And.intro E.gibbsFreeEnergyClosed E.leverRuleApplicableClosed)))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse