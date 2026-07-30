import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure SinteringKineticsPackage where
  densificationRate : Type
  grainGrowth : Type
  diffusionCoefficient : Prop
  sinteringTemperature : Prop
  poreRemoval : Prop

structure SinteringKineticsEvidence (S : SinteringKineticsPackage) where
  diffusionCoefficientClosed : S.diffusionCoefficient
  sinteringTemperatureClosed : S.sinteringTemperature
  poreRemovalClosed : S.poreRemoval

def SinteringKineticsClosed (S : SinteringKineticsPackage) : Prop :=
  S.diffusionCoefficient ∧ S.sinteringTemperature ∧ S.poreRemoval

theorem sintering_kinetics_closed_from_evidence (S : SinteringKineticsPackage)
    (E : SinteringKineticsEvidence S) : SinteringKineticsClosed S := by
  exact And.intro E.diffusionCoefficientClosed (And.intro E.sinteringTemperatureClosed E.poreRemovalClosed)

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse