import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure CategoryTheoryLemmaPackage where
  categoryDefined : Prop
  objectIdentified : Prop
  morphismDefined : Prop
  compositionDefined : Prop
  identityMorphism : Prop
  associativityHolds : Prop
  compositionClosed : compositionDefined
  identityClosed : identityMorphism
  associativityClosed : associativityHolds

structure CategoryTheoryLemmaEvidence (C : CategoryTheoryLemmaPackage) where
  categoryDefinedClosed : C.categoryDefined
  objectIdentifiedClosed : C.objectIdentified
  morphismDefinedClosed : C.morphismDefined
  compositionDefinedClosed : C.compositionDefined
  identityMorphismClosed : C.identityMorphism
  associativityHoldsClosed : C.associativityHolds

def CategoryTheoryLemmaClosed (C : CategoryTheoryLemmaPackage) : Prop :=
  C.categoryDefined ∧ C.objectIdentified ∧ C.morphismDefined ∧
  C.compositionDefined ∧ C.identityMorphism ∧ C.associativityHolds

theorem category_theory_lemma_closed_from_evidence
    (C : CategoryTheoryLemmaPackage) (E : CategoryTheoryLemmaEvidence C) :
    CategoryTheoryLemmaClosed C := by
  exact And.intro E.categoryDefinedClosed
    (And.intro E.objectIdentifiedClosed
      (And.intro E.morphismDefinedClosed
        (And.intro E.compositionDefinedClosed
          (And.intro E.identityMorphismClosed E.associativityHoldsClosed))))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse