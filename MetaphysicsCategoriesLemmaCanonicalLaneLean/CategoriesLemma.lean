import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure CategoriesLemmaPackage where
  categoryCount : Nat
  categoryList : List String
  homonymyResolved : Prop
  exhaustiveClassification : Prop
  crossClassificationConsistent : Prop

structure CategoriesLemmaEvidence (C : CategoriesLemmaPackage) where
  homonymyResolvedClosed : C.homonymyResolved
  exhaustiveClassificationClosed : C.exhaustiveClassification
  crossClassificationConsistentClosed : C.crossClassificationConsistent

def CategoriesLemmaClosed (C : CategoriesLemmaPackage) : Prop :=
  C.homonymyResolved ∧ C.exhaustiveClassification ∧ C.crossClassificationConsistent

theorem categories_lemma_closed_from_evidence (C : CategoriesLemmaPackage) (E : CategoriesLemmaEvidence C) :
    CategoriesLemmaClosed C :=
  And.intro E.homonymyResolvedClosed
    (And.intro E.exhaustiveClassificationClosed E.crossClassificationConsistentClosed)

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse