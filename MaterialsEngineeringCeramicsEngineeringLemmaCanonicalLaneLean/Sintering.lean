import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure SinteringPackage where
  powderCompaction : Type u
  heatingSchedule : Type v
  densificationMechanism : Type w
  grainGrowth : Prop
  poreElimination : Prop
  finalDensity : Prop
  microstructureEvolution : Prop

structure SinteringEvidence (S : SinteringPackage) where
  grainGrowthClosed : S.grainGrowth
  poreEliminationClosed : S.poreElimination
  finalDensityClosed : S.finalDensity
  microstructureEvolutionClosed : S.microstructureEvolution

def SinteringClosed (S : SinteringPackage) : Prop :=
  S.grainGrowth ∧ S.poreElimination ∧ S.finalDensity ∧ S.microstructureEvolution

theorem sintering_closed_from_evidence (S : SinteringPackage) (Ev : SinteringEvidence S) : SinteringClosed S := by
  exact And.intro Ev.grainGrowthClosed (And.intro Ev.poreEliminationClosed (And.intro Ev.finalDensityClosed Ev.microstructureEvolutionClosed))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse