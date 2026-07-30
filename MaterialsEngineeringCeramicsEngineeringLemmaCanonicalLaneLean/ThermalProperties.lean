import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure ThermalPackage where
  thermalConductivity : Type u
  thermalExpansion : Type v
  specificHeat : Type w
  thermalShockResistance : Prop
  thermalDiffusivity : Prop
  heatCapacity : Prop
  thermalCycling : Prop

structure ThermalEvidence (T : ThermalPackage) where
  thermalShockResistanceClosed : T.thermalShockResistance
  thermalDiffusivityClosed : T.thermalDiffusivity
  heatCapacityClosed : T.heatCapacity
  thermalCyclingClosed : T.thermalCycling

def ThermalClosed (T : ThermalPackage) : Prop :=
  T.thermalShockResistance ∧ T.thermalDiffusivity ∧ T.heatCapacity ∧ T.thermalCycling

theorem thermal_closed_from_evidence (T : ThermalPackage) (Ev : ThermalEvidence T) : ThermalClosed T := by
  exact And.intro Ev.thermalShockResistanceClosed (And.intro Ev.thermalDiffusivityClosed (And.intro Ev.heatCapacityClosed Ev.thermalCyclingClosed))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse