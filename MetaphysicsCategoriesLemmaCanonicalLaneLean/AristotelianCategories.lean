import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure AristotelianCategoriesPackage where
  substance : Prop
  quantity : Prop
  quality : Prop
  relation : Prop
  place : Prop
  time : Prop
  position : Prop
  state : Prop
  action : Prop
  affection : Prop
  categoriesCoverage : Prop

structure AristotelianCategoriesEvidence (A : AristotelianCategoriesPackage) where
  substanceClosed : A.substance
  quantityClosed : A.quantity
  qualityClosed : A.quality
  relationClosed : A.relation
  placeClosed : A.place
  timeClosed : A.time
  positionClosed : A.position
  stateClosed : A.state
  actionClosed : A.action
  affectionClosed : A.affection
  categoriesCoverageClosed : A.categoriesCoverage

def AristotelianCategoriesClosed (A : AristotelianCategoriesPackage) : Prop :=
  A.substance ∧ A.quantity ∧ A.quality ∧ A.relation ∧ A.place ∧ A.time ∧ A.position ∧ A.state ∧ A.action ∧ A.affection ∧ A.categoriesCoverage

theorem aristotelian_categories_closed_from_evidence
    (A : AristotelianCategoriesPackage) (E : AristotelianCategoriesEvidence A) :
    AristotelianCategoriesClosed A := by
  refine And.intro E.substanceClosed (And.intro E.quantityClosed (And.intro E.qualityClosed
    (And.intro E.relationClosed (And.intro E.placeClosed (And.intro E.timeClosed
    (And.intro E.positionClosed (And.intro E.stateClosed (And.intro E.actionClosed
    (And.intro E.affectionClosed E.categoriesCoverageClosed)))))))))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse