import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure CrystalLatticeStructure where
  pointGroup : Type u
  bravaisLattice : Type v
  unitCellVolume : ℝ
  coordinationNumber : Nat

structure CrystalLatticeEvidence (L : CrystalLatticeStructure) where
  pointGroupClosed : Nonempty L.pointGroup
  bravaisLatticeClosed : Nonempty L.bravaisLattice
  unitCellVolumePositive : L.unitCellVolume > 0
  coordinationNumberValid : L.coordinationNumber ≥ 2

def CrystalLatticeClosed (L : CrystalLatticeStructure) : Prop :=
  Nonempty L.pointGroup ∧ Nonempty L.bravaisLattice ∧ L.unitCellVolume > 0 ∧ L.coordinationNumber ≥ 2

theorem crystal_lattice_closed_from_evidence (L : CrystalLatticeStructure) (E : CrystalLatticeEvidence L) :
    CrystalLatticeClosed L := by
  exact And.intro E.pointGroupClosed (And.intro E.bravaisLatticeClosed (And.intro E.unitCellVolumePositive E.coordinationNumberValid))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse