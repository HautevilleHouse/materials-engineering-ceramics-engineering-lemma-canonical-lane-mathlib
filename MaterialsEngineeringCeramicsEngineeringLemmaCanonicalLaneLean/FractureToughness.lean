import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure FractureToughnessData where
  stressIntensityFactor : ℝ
  crackLength : ℝ
  fractureEnergy : ℝ
  geometryFactor : ℝ

structure FractureToughnessEvidence (F : FractureToughnessData) where
  stressIntensityFactorPos : F.stressIntensityFactor > 0
  crackLengthPos : F.crackLength > 0
  fractureEnergyPos : F.fractureEnergy > 0
  geometryFactorPos : F.geometryFactor > 0

def FractureToughnessClosed (F : FractureToughnessData) : Prop :=
  F.stressIntensityFactor > 0 ∧ F.crackLength > 0 ∧ F.fractureEnergy > 0 ∧ F.geometryFactor > 0

theorem fracture_toughness_closed_from_evidence (F : FractureToughnessData) (E : FractureToughnessEvidence F) :
    FractureToughnessClosed F := by
  exact And.intro E.stressIntensityFactorPos (And.intro E.crackLengthPos (And.intro E.fractureEnergyPos E.geometryFactorPos))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse