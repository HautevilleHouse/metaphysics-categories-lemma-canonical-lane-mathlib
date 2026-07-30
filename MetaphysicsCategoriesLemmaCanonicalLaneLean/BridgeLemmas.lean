import canonicalLaneMathlib.AdmissibleClass
import MetaphysicsCategoriesLemmaCanonicalLaneLean.CategoriesLemmaObject

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoriesLemmaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
