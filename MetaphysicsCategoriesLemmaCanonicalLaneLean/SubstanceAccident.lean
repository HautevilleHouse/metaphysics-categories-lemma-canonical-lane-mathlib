import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure SubstanceAccidentPackage where
  primarySubstance : Type u
  secondarySubstance : Type v
  accident : Type w
  inherenceRelation : Prop
  predicationRelation : Prop
  essentialPredication : Prop
  accidentalPredication : Prop

structure SubstanceAccidentEvidence (S : SubstanceAccidentPackage) where
  inherenceRelationClosed : S.inherenceRelation
  predicationRelationClosed : S.predicationRelation
  essentialPredicationClosed : S.essentialPredication
  accidentalPredicationClosed : S.accidentalPredication

def SubstanceAccidentClosed (S : SubstanceAccidentPackage) : Prop :=
  S.inherenceRelation ∧ S.predicationRelation ∧
  S.essentialPredication ∧ S.accidentalPredication

theorem substance_accident_closed_from_evidence (S : SubstanceAccidentPackage) (E : SubstanceAccidentEvidence S) :
    SubstanceAccidentClosed S :=
  And.intro E.inherenceRelationClosed
    (And.intro E.predicationRelationClosed
      (And.intro E.essentialPredicationClosed E.accidentalPredicationClosed))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse