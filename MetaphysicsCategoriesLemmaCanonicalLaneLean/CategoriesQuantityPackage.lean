import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure CategoriesQuantityPackage where
  discreteQuantity : Prop
  continuousQuantity : Prop
  quantityRelativity : Prop
  quantityComparison : Prop
  quantityMeasure : Prop

structure CategoriesQuantityEvidence (Q : CategoriesQuantityPackage) where
  discreteQuantityClosed : Q.discreteQuantity
  continuousQuantityClosed : Q.continuousQuantity
  quantityRelativityClosed : Q.quantityRelativity
  quantityComparisonClosed : Q.quantityComparison
  quantityMeasureClosed : Q.quantityMeasure

def CategoriesQuantityClosed (Q : CategoriesQuantityPackage) : Prop :=
  Q.discreteQuantity ∧ Q.continuousQuantity ∧ Q.quantityRelativity ∧ Q.quantityComparison ∧ Q.quantityMeasure

theorem categories_quantity_closed_from_evidence (Q : CategoriesQuantityPackage) (E : CategoriesQuantityEvidence Q) :
    CategoriesQuantityClosed Q := by
  exact And.intro E.discreteQuantityClosed
    (And.intro E.continuousQuantityClosed
      (And.intro E.quantityRelativityClosed (And.intro E.quantityComparisonClosed E.quantityMeasureClosed)))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse