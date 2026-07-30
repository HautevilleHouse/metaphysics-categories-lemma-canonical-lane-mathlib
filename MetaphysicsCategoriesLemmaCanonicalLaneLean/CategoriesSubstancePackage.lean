import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure CategoriesSubstancePackage where
  primarySubstance : Type u
  secondarySubstance : Type v
  substancePredication : Prop
  substanceReciprocal : Prop
  substanceBridging : Prop

structure CategoriesSubstanceEvidence (S : CategoriesSubstancePackage) where
  substancePredicationClosed : S.substancePredication
  substanceReciprocalClosed : S.substanceReciprocal
  substanceBridgingClosed : S.substanceBridging

def CategoriesSubstanceClosed (S : CategoriesSubstancePackage) : Prop :=
  S.substancePredication ∧ S.substanceReciprocal ∧ S.substanceBridging

theorem categories_substance_closed_from_evidence (S : CategoriesSubstancePackage) (E : CategoriesSubstanceEvidence S) :
    CategoriesSubstanceClosed S := by
  exact And.intro E.substancePredicationClosed (And.intro E.substanceReciprocalClosed E.substanceBridgingClosed)

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse