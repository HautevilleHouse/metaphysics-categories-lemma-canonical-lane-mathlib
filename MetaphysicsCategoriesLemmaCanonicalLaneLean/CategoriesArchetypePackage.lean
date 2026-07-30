import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure CategoriesArchetypePackage where
  archetypeKind : Type u
  archetypeRelations : Prop
  archetypeInstantiation : Prop
  archetypeDependence : Prop

structure CategoriesArchetypeEvidence (C : CategoriesArchetypePackage) where
  archetypeRelationsClosed : C.archetypeRelations
  archetypeInstantiationClosed : C.archetypeInstantiation
  archetypeDependenceClosed : C.archetypeDependence

def CategoriesArchetypeClosed (C : CategoriesArchetypePackage) : Prop :=
  C.archetypeRelations ∧ C.archetypeInstantiation ∧ C.archetypeDependence

theorem categories_archetype_closed_from_evidence (C : CategoriesArchetypePackage) (E : CategoriesArchetypeEvidence C) :
    CategoriesArchetypeClosed C := by
  exact And.intro E.archetypeRelationsClosed (And.intro E.archetypeInstantiationClosed E.archetypeDependenceClosed)

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse