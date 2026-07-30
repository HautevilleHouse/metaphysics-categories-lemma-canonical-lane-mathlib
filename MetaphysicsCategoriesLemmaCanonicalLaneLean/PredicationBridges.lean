import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure PredicationBridgesPackage where
  essentialPredication : Prop
  accidentalPredication : Prop
  genusSpeciesRelation : Prop
  differentialSpecifica : Prop
  definitionalStructure : Prop

structure PredicationBridgesEvidence (P : PredicationBridgesPackage) where
  essentialPredicationClosed : P.essentialPredication
  accidentalPredicationClosed : P.accidentalPredication
  genusSpeciesRelationClosed : P.genusSpeciesRelation
  differentialSpecificaClosed : P.differentialSpecifica
  definitionalStructureClosed : P.definitionalStructure

def PredicationBridgesClosed (P : PredicationBridgesPackage) : Prop :=
  P.essentialPredication ∧ P.accidentalPredication ∧ P.genusSpeciesRelation ∧ P.differentialSpecifica ∧ P.definitionalStructure

theorem predication_bridges_closed_from_evidence
    (P : PredicationBridgesPackage) (E : PredicationBridgesEvidence P) :
    PredicationBridgesClosed P := by
  exact And.intro E.essentialPredicationClosed
    (And.intro E.accidentalPredicationClosed
      (And.intro E.genusSpeciesRelationClosed
        (And.intro E.differentialSpecificaClosed E.definitionalStructureClosed)))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse