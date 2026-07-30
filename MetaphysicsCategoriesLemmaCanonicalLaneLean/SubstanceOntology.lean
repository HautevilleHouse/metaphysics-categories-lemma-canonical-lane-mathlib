import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure SubstanceOntologyPackage where
  primarySubstance : Prop
  secondarySubstance : Prop
  inherenceStructure : Prop
  individuationPrinciple : Prop
  substratumTheory : Prop

structure SubstanceOntologyEvidence (S : SubstanceOntologyPackage) where
  primarySubstanceClosed : S.primarySubstance
  secondarySubstanceClosed : S.secondarySubstance
  inherenceStructureClosed : S.inherenceStructure
  individuationPrincipleClosed : S.individuationPrinciple
  substratumTheoryClosed : S.substratumTheory

def SubstanceOntologyClosed (S : SubstanceOntologyPackage) : Prop :=
  S.primarySubstance ∧ S.secondarySubstance ∧ S.inherenceStructure ∧ S.individuationPrinciple ∧ S.substratumTheory

theorem substance_ontology_closed_from_evidence
    (S : SubstanceOntologyPackage) (E : SubstanceOntologyEvidence S) :
    SubstanceOntologyClosed S := by
  exact And.intro E.primarySubstanceClosed
    (And.intro E.secondarySubstanceClosed
      (And.intro E.inherenceStructureClosed
        (And.intro E.individuationPrincipleClosed E.substratumTheoryClosed)))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse