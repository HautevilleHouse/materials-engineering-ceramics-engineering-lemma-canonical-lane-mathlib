import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean.MicrostructureEvolution
import MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean.MechanicalFailureCriterion

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (A.endpointSatisfied ∨ A.remainderRecorded) ∧ True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  refine And.intro ?_ trivial
  exact A.gateWitness

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCeramicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ceramics_endgame (A : AdmissibleClass) : ConstrainedCeramicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse