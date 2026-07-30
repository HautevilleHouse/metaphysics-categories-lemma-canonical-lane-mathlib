import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure UniversalsParticularsLemmaPackage where
  universalEntity : Type u
  particularEntity : Type v
  instantiationRelation : particularEntity -> universalEntity -> Prop
  abstractionRelation : universalEntity -> Prop
  universalsExist : Prop
  particularsExist : Prop
  instantiationClosed : instantiationRelation
  abstractionClosed : abstractionRelation
  universalsExistClosed : universalsExist
  particularsExistClosed : particularsExist

structure UniversalsParticularsLemmaEvidence (U : UniversalsParticularsLemmaPackage) where
  instantiationRelationClosed : U.instantiationRelation
  abstractionRelationClosed : U.abstractionRelation
  universalsExistClosed : U.universalsExist
  particularsExistClosed : U.particularsExist

def UniversalsParticularsLemmaClosed (U : UniversalsParticularsLemmaPackage) : Prop :=
  U.instantiationRelation ∧ U.abstractionRelation ∧
  U.universalsExist ∧ U.particularsExist

theorem universals_particulars_lemma_closed_from_evidence
    (U : UniversalsParticularsLemmaPackage)
    (E : UniversalsParticularsLemmaEvidence U) :
    UniversalsParticularsLemmaClosed U := by
  exact And.intro E.instantiationRelationClosed
    (And.intro E.abstractionRelationClosed
      (And.intro E.universalsExistClosed E.particularsExistClosed))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse