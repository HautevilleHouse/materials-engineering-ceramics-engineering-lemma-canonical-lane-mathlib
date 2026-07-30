import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure CeramicsProcessingPackage where
  powderProcessing : Prop
  sintering : Prop
  grainGrowth : Prop
  densification : Prop
  hotPressing : Prop
  chemicalVaporDeposition : Prop
  solGelProcessing : Prop

structure CeramicsProcessingEvidence (C : CeramicsProcessingPackage) where
  powderProcessingClosed : C.powderProcessing
  sinteringClosed : C.sintering
  grainGrowthClosed : C.grainGrowth
  densificationClosed : C.densification
  hotPressingClosed : C.hotPressing
  chemicalVaporDepositionClosed : C.chemicalVaporDeposition
  solGelProcessingClosed : C.solGelProcessing

def CeramicsProcessingClosed (C : CeramicsProcessingPackage) : Prop :=
  C.powderProcessing ∧ C.sintering ∧ C.grainGrowth ∧ C.densification ∧
  C.hotPressing ∧ C.chemicalVaporDeposition ∧ C.solGelProcessing

theorem ceramics_processing_closed_from_evidence (C : CeramicsProcessingPackage) (E : CeramicsProcessingEvidence C) :
    CeramicsProcessingClosed C := by
  exact And.intro E.powderProcessingClosed
    (And.intro E.sinteringClosed
      (And.intro E.grainGrowthClosed
        (And.intro E.densificationClosed
          (And.intro E.hotPressingClosed
            (And.intro E.chemicalVaporDepositionClosed E.solGelProcessingClosed)))))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse