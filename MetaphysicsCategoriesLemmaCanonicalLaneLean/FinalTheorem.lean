import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsCategoriesLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MetaphysicsCategoriesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

def ConstrainedCategoriesLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_categories_lemma_endgame (A : AdmissibleClass) :
    ConstrainedCategoriesLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse