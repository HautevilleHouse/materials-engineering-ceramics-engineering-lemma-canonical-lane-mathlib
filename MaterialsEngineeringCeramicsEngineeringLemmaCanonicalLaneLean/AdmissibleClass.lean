import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean

structure CeramicsAdmittedObject where
  ceramicStructure : Type
  phaseDiagramValid : Prop
  elasticLimitMet : Prop
  fractureToughnessSufficient : Prop
  conclusion : elasticLimitMet ∧ fractureToughnessSufficient

structure AdmissibleClass where
  object : CeramicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.elasticLimitMet ∧ A.object.fractureToughnessSufficient) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringCeramicsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
