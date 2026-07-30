import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure PredicationStructurePackage where
  saidOfRelation : Type u
  presentInRelation : Type v
  essentialPredication : Prop
  accidentalPredication : Prop
  definitionalHierarchy : Prop
  inherenceScheme : Prop

structure PredicationStructureEvidence (P : PredicationStructurePackage) where
  essentialPredicationClosed : P.essentialPredication
  accidentalPredicationClosed : P.accidentalPredication
  definitionalHierarchyClosed : P.definitionalHierarchy
  inherenceSchemeClosed : P.inherenceScheme

def PredicationStructureClosed (P : PredicationStructurePackage) : Prop :=
  P.essentialPredication ∧ P.accidentalPredication ∧
  P.definitionalHierarchy ∧ P.inherenceScheme

theorem predication_structure_closed_from_evidence (P : PredicationStructurePackage)
    (E : PredicationStructureEvidence P) : PredicationStructureClosed P := by
  exact And.intro E.essentialPredicationClosed
    (And.intro E.accidentalPredicationClosed
      (And.intro E.definitionalHierarchyClosed E.inherenceSchemeClosed))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
