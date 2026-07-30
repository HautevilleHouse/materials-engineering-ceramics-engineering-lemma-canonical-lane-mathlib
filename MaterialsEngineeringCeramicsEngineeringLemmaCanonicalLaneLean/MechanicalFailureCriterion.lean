import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure MechanicalFailureCriterionPackage (A : AdmissibleClass) where
  criticalStressIntensity : Prop
  flawSizeDistribution : Prop
  slowCrackGrowth : Prop
  fatigueThreshold : Prop

structure MechanicalFailureCriterionEvidence {A : AdmissibleClass} (P : MechanicalFailureCriterionPackage A) where
  criticalStressIntensityClosed : P.criticalStressIntensity
  flawSizeDistributionClosed : P.flawSizeDistribution
  slowCrackGrowthClosed : P.slowCrackGrowth
  fatigueThresholdClosed : P.fatigueThreshold

def MechanicalFailureCriterionClosed {A : AdmissibleClass} (P : MechanicalFailureCriterionPackage A) : Prop :=
  P.criticalStressIntensity ∧ P.flawSizeDistribution ∧
  P.slowCrackGrowth ∧ P.fatigueThreshold

theorem mech_fail_crit_closed_from_evidence {A : AdmissibleClass} (P : MechanicalFailureCriterionPackage A)
    (E : MechanicalFailureCriterionEvidence P) : MechanicalFailureCriterionClosed P := by
  exact And.intro E.criticalStressIntensityClosed
    (And.intro E.flawSizeDistributionClosed
      (And.intro E.slowCrackGrowthClosed E.fatigueThresholdClosed))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse