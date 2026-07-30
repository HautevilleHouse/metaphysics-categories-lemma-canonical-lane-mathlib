import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure PredicationBridgePackage where
  predicationRelation : Type u -> Type v -> Prop
  subjectTerm : Type u
  predicateTerm : Type v
  truthValue : Prop
  quantification : Prop
  negation : Prop
  predicationClosed : predicationRelation subjectTerm predicateTerm
  truthClosed : truthValue
  quantificationClosed : quantification
  negationClosed : negation

structure PredicationBridgeEvidence (P : PredicationBridgePackage) where
  predicationRelationClosed : P.predicationRelation P.subjectTerm P.predicateTerm
  truthValueClosed : P.truthValue
  quantificationClosed : P.quantification
  negationClosed : P.negation

def PredicationBridgeClosed (P : PredicationBridgePackage) : Prop :=
  P.predicationRelation P.subjectTerm P.predicateTerm ∧ P.truthValue ∧
  P.quantification ∧ P.negation

theorem predication_bridge_closed_from_evidence (P : PredicationBridgePackage)
    (E : PredicationBridgeEvidence P) : PredicationBridgeClosed P := by
  exact And.intro E.predicationRelationClosed
    (And.intro E.truthValueClosed
      (And.intro E.quantificationClosed E.negationClosed))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse