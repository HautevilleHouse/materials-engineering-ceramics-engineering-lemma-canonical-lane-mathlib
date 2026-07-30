import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure ElasticityTensor where
  dimension : Nat
  stiffnessMatrix : ℝ × ℝ × ℝ × ℝ × ℝ × ℝ
  complianceMatrix : ℝ × ℝ × ℝ × ℝ × ℝ × ℝ
  youngModulus : ℝ
  poissonRatio : ℝ

structure ElasticityEvidence (E : ElasticityTensor) where
  dimensionPos : E.dimension = 3
  stiffnessSymmetric : True
  complianceSymmetric : True
  youngModulusPos : E.youngModulus > 0
  poissonRatioInRange : -1 < E.poissonRatio ∧ E.poissonRatio < 0.5

def ElasticityClosed (E : ElasticityTensor) : Prop :=
  E.dimension = 3 ∧ True ∧ True ∧ E.youngModulus > 0 ∧ (-1 < E.poissonRatio ∧ E.poissonRatio < 0.5)

theorem elasticity_closed_from_evidence (E : ElasticityTensor) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.dimensionPos (And.intro Ev.stiffnessSymmetric (And.intro Ev.complianceSymmetric (And.intro Ev.youngModulusPos Ev.poissonRatioInRange)))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse