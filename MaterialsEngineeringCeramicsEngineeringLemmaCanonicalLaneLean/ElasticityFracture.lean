import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure ElasticityFracturePackage where
  stressTensor : Type
  strainEnergy : Type
  fractureCriterion : Prop
  crackPropagation : Prop
  stressConcentration : Prop

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  fractureCriterionClosed : E.fractureCriterion
  crackPropagationClosed : E.crackPropagation
  stressConcentrationClosed : E.stressConcentration

def ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.fractureCriterion ∧ E.crackPropagation ∧ E.stressConcentration

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracturePackage)
    (Ev : ElasticityFractureEvidence E) : ElasticityFractureClosed E := by
  exact And.intro Ev.fractureCriterionClosed (And.intro Ev.crackPropagationClosed Ev.stressConcentrationClosed)

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse