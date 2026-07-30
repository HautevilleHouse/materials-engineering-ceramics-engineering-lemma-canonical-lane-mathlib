import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure ThermalGradientsPackage where
  temperatureProfile : Type
  heatFlux : Type
  thermalConductivity : Prop
  heatEquation : Prop
  boundaryConditions : Prop

structure ThermalGradientsEvidence (T : ThermalGradientsPackage) where
  thermalConductivityClosed : T.thermalConductivity
  heatEquationClosed : T.heatEquation
  boundaryConditionsClosed : T.boundaryConditions

def ThermalGradientsClosed (T : ThermalGradientsPackage) : Prop :=
  T.thermalConductivity ∧ T.heatEquation ∧ T.boundaryConditions

theorem thermal_gradients_closed_from_evidence (T : ThermalGradientsPackage)
    (E : ThermalGradientsEvidence T) : ThermalGradientsClosed T := by
  exact And.intro E.thermalConductivityClosed (And.intro E.heatEquationClosed E.boundaryConditionsClosed)

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse