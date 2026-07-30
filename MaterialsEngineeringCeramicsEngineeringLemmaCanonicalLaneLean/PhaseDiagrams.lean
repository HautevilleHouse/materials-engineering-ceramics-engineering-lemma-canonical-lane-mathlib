import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramsPackage where
  phases : Type
  transitionTemperatures : Type
  equilibriumCondition : Prop
  leverRule : Prop
  phaseStability : Prop

structure PhaseDiagramsEvidence (P : PhaseDiagramsPackage) where
  equilibriumConditionClosed : P.equilibriumCondition
  leverRuleClosed : P.leverRule
  phaseStabilityClosed : P.phaseStability

def PhaseDiagramsClosed (P : PhaseDiagramsPackage) : Prop :=
  P.equilibriumCondition ∧ P.leverRule ∧ P.phaseStability

theorem phase_diagrams_closed_from_evidence (P : PhaseDiagramsPackage)
    (E : PhaseDiagramsEvidence P) : PhaseDiagramsClosed P := by
  exact And.intro E.equilibriumConditionClosed (And.intro E.leverRuleClosed E.phaseStabilityClosed)

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse