import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  stiffnessTensor : Type w
  hookesLaw : Prop
  isotropicElasticity : Prop
  poissonRatio : Prop
  youngModulus : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  isotropicElasticityClosed : E.isotropicElasticity
  poissonRatioClosed : E.poissonRatio
  youngModulusClosed : E.youngModulus

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.isotropicElasticity ∧ E.poissonRatio ∧ E.youngModulus

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.isotropicElasticityClosed (And.intro Ev.poissonRatioClosed Ev.youngModulusClosed))

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse