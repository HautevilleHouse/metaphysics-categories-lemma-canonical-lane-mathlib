import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure AdmittedObject where
  carrier : Type u
  categoryStructure : Prop
  objectClassified : Prop
  lemmaConclusion : Prop

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.lemmaConclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse