import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure FracturePackage where
  crackGeometry : Type u
  stressIntensityFactor : Type v
  fractureToughness : Type w
  griffithCriterion : Prop
  crackPropagation : Prop
  parisLaw : Prop
  rCurve : Prop

structure FractureEvidence (F : FracturePackage) where
  griffithCriterionClosed : F.griffithCriterion
  crackPropagationClosed : F.crackPropagation
  parisLawClosed : F.parisLaw
  rCurveClosed : F.rCurve

def FractureClosed (F : FracturePackage) : Prop :=
  F.griffithCriterion ∧ F.crackPropagation ∧ F.parisLaw ∧ F.rCurve

theorem fracture_closed_from_evidence (F : FracturePackage) (Ev : FractureEvidence F) : FractureClosed F := by
  exact And.intro Ev.griffithCriterionClosed (And.intro Ev.crackPropagationClosed (And.intro Ev.parisLawClosed Ev.rCurveClosed))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse