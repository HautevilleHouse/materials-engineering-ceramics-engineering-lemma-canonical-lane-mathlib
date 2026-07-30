import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure CrystallographyStructure where
  latticeType : String
  unitCellVolume : ℝ
  symmetryGroup : String
  bravaisLattice : String
  xrdPattern : Prop

structure CrystallographyEvidence (C : CrystallographyStructure) where
  latticeTypeClosed : C.latticeType = "FCC" ∨ C.latticeType = "BCC" ∨ C.latticeType = "HCP"
  unitCellVolumeClosed : C.unitCellVolume > 0
  symmetryGroupClosed : C.symmetryGroup ≠ ""
  bravaisLatticeClosed : C.bravaisLattice ≠ ""
  xrdPatternClosed : C.xrdPattern

def CrystallographyClosed (C : CrystallographyStructure) : Prop :=
  (C.latticeType = "FCC" ∨ C.latticeType = "BCC" ∨ C.latticeType = "HCP") ∧
  C.unitCellVolume > 0 ∧ C.symmetryGroup ≠ "" ∧ C.bravaisLattice ≠ "" ∧ C.xrdPattern

theorem crystallography_closed_from_evidence (C : CrystallographyStructure) (E : CrystallographyEvidence C) : CrystallographyClosed C :=
  And.intro E.latticeTypeClosed (And.intro E.unitCellVolumeClosed (And.intro E.symmetryGroupClosed (And.intro E.bravaisLatticeClosed E.xrdPatternClosed)))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse