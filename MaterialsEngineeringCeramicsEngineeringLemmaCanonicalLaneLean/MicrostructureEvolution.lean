import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure MicrostructureEvolutionPackage (A : AdmissibleClass) where
  grainGrowthDrivingForce : Prop
  poreMigrationControlled : Prop
  densificationKinetics : Prop
  grainBoundaryAnisotropy : Prop

structure MicrostructureEvolutionEvidence {A : AdmissibleClass} (P : MicrostructureEvolutionPackage A) where
  grainGrowthDrivingForceClosed : P.grainGrowthDrivingForce
  poreMigrationControlledClosed : P.poreMigrationControlled
  densificationKineticsClosed : P.densificationKinetics
  grainBoundaryAnisotropyClosed : P.grainBoundaryAnisotropy

def MicrostructureEvolutionClosed {A : AdmissibleClass} (P : MicrostructureEvolutionPackage A) : Prop :=
  P.grainGrowthDrivingForce ∧ P.poreMigrationControlled ∧
  P.densificationKinetics ∧ P.grainBoundaryAnisotropy

theorem microstruc_evol_closed_from_evidence {A : AdmissibleClass} (P : MicrostructureEvolutionPackage A)
    (E : MicrostructureEvolutionEvidence P) : MicrostructureEvolutionClosed P := by
  exact And.intro E.grainGrowthDrivingForceClosed
    (And.intro E.poreMigrationControlledClosed
      (And.intro E.densificationKineticsClosed E.grainBoundaryAnisotropyClosed))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse