import MetaphysicsCategoriesLemmaCanonicalLaneLean.CategoriesLemmaObject

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure SubstanceOntologyPackage where
  substanceList : List String
  hierarchyRelation : Prop
  perSeDefinition : Prop
  dependenceClosure : Prop

structure SubstanceOntologyEvidence (P : SubstanceOntologyPackage) where
  substanceListClosed : True
  hierarchyRelationClosed : P.hierarchyRelation
  perSeDefinitionClosed : P.perSeDefinition
  dependenceClosureClosed : P.dependenceClosure

def SubstanceOntologyClosed (P : SubstanceOntologyPackage) : Prop :=
  P.hierarchyRelation ∧ P.perSeDefinition ∧ P.dependenceClosure

theorem substance_ontology_closed_from_evidence (P : SubstanceOntologyPackage) (E : SubstanceOntologyEvidence P) :
    SubstanceOntologyClosed P := by
  exact And.intro E.hierarchyRelationClosed (And.intro E.perSeDefinitionClosed E.dependenceClosureClosed)

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
