import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure CategoryClassificationPackage where
  categoryTen : Type u
  categoryLabels : List String
  mutualExclusion : Prop
  exhaustiveCover : Prop
  subordinationRelations : Prop
  tenCategoriesListed : List String := ["substance", "quantity", "quality", "relation", "place", "time", "position", "state", "action", "affection"]

structure CategoryClassificationEvidence (C : CategoryClassificationPackage) where
  mutualExclusionClosed : C.mutualExclusion
  exhaustiveCoverClosed : C.exhaustiveCover
  subordinationRelationsClosed : C.subordinationRelations

def CategoryClassificationClosed (C : CategoryClassificationPackage) : Prop :=
  C.mutualExclusion ∧ C.exhaustiveCover ∧ C.subordinationRelations

theorem category_classification_closed_from_evidence (C : CategoryClassificationPackage)
    (E : CategoryClassificationEvidence C) : CategoryClassificationClosed C := by
  exact And.intro E.mutualExclusionClosed
    (And.intro E.exhaustiveCoverClosed E.subordinationRelationsClosed)

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
