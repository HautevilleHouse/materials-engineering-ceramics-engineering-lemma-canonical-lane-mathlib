import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure ThermalConductivity where
  phononMeanFreePath : ℝ
  specificHeat : ℝ
  soundVelocity : ℝ
  thermalConductivityValue : ℝ
  temperatureDependent : Prop

structure ThermalConductivityEvidence (T : ThermalConductivity) where
  phononMeanFreePathClosed : T.phononMeanFreePath > 0
  specificHeatClosed : T.specificHeat > 0
  soundVelocityClosed : T.soundVelocity > 0
  thermalConductivityValueClosed : T.thermalConductivityValue > 0
  temperatureDependentClosed : T.temperatureDependent

def ThermalConductivityClosed (T : ThermalConductivity) : Prop :=
  T.phononMeanFreePath > 0 ∧ T.specificHeat > 0 ∧ T.soundVelocity > 0 ∧ T.thermalConductivityValue > 0 ∧ T.temperatureDependent

theorem thermal_conductivity_closed_from_evidence (T : ThermalConductivity) (Ev : ThermalConductivityEvidence T) : ThermalConductivityClosed T :=
  And.intro Ev.phononMeanFreePathClosed (And.intro Ev.specificHeatClosed (And.intro Ev.soundVelocityClosed (And.intro Ev.thermalConductivityValueClosed Ev.temperatureDependentClosed)))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse