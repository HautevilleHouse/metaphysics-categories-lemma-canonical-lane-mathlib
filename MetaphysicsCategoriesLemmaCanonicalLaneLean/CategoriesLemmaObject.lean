import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure Substance where
  carrier : Type
  attributes : List String
  underlyingCategory : String

structure CategoriesLemmaObject where
  substance : Substance
  categoryMembership : Prop
  perSeExistence : Prop
  conclusion : perSeExistence

structure CategoriesLemmaEndgameState where
  object : CategoriesLemmaObject

def CategoriesLemmaWitnessClosed (O : CategoriesLemmaObject) : Prop :=
  O.perSeExistence

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
