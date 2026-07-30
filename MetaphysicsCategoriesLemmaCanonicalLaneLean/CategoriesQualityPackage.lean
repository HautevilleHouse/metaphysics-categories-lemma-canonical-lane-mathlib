import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure CategoriesQualityPackage where
  qualityKind : Type u
  qualityIntensity : Prop
  qualityContrariety : Prop
  qualityPrivative : Prop
  qualityAffection : Prop

structure CategoriesQualityEvidence (Q : CategoriesQualityPackage) where
  qualityIntensityClosed : Q.qualityIntensity
  qualityContrarietyClosed : Q.qualityContrariety
  qualityPrivativeClosed : Q.qualityPrivative
  qualityAffectionClosed : Q.qualityAffection

def CategoriesQualityClosed (Q : CategoriesQualityPackage) : Prop :=
  Q.qualityIntensity ∧ Q.qualityContrariety ∧ Q.qualityPrivative ∧ Q.qualityAffection

theorem categories_quality_closed_from_evidence (Q : CategoriesQualityPackage) (E : CategoriesQualityEvidence Q) :
    CategoriesQualityClosed Q := by
  exact And.intro E.qualityIntensityClosed
    (And.intro E.qualityContrarietyClosed (And.intro E.qualityPrivativeClosed E.qualityAffectionClosed))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse