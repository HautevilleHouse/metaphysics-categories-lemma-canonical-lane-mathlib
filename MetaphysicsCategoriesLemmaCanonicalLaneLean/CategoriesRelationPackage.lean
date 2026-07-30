import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure CategoriesRelationPackage where
  relationKind : Type u
  relata : Type v
  relataInterdependence : Prop
  relationAsymmetric : Prop
  relationTransitive : Prop

structure CategoriesRelationEvidence (R : CategoriesRelationPackage) where
  relataInterdependenceClosed : R.relataInterdependence
  relationAsymmetricClosed : R.relationAsymmetric
  relationTransitiveClosed : R.relationTransitive

def CategoriesRelationClosed (R : CategoriesRelationPackage) : Prop :=
  R.relataInterdependence ∧ R.relationAsymmetric ∧ R.relationTransitive

theorem categories_relation_closed_from_evidence (R : CategoriesRelationPackage) (E : CategoriesRelationEvidence R) :
    CategoriesRelationClosed R := by
  exact And.intro E.relataInterdependenceClosed (And.intro E.relationAsymmetricClosed E.relationTransitiveClosed)

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse