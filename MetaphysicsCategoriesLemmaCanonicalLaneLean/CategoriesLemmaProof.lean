import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsCategoriesLemmaCanonicalLaneLean.AristotelianCategories
import HautevilleHouse.MetaphysicsCategoriesLemmaCanonicalLaneLean.SubstanceOntology
import HautevilleHouse.MetaphysicsCategoriesLemmaCanonicalLaneLean.PredicationBridges

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure CategoriesLemmaProofPackage where
  categories : AristotelianCategoriesPackage
  substance : SubstanceOntologyPackage
  predication : PredicationBridgesPackage
  lemmaStatement : Prop
  lemmaProof : Prop

structure CategoriesLemmaProofEvidence (C : CategoriesLemmaProofPackage) where
  categoriesClosed : AristotelianCategoriesClosed C.categories
  substanceClosed : SubstanceOntologyClosed C.substance
  predicationClosed : PredicationBridgesClosed C.predication
  lemmaStatementClosed : C.lemmaStatement
  lemmaProofClosed : C.lemmaProof

def CategoriesLemmaProofClosed (C : CategoriesLemmaProofPackage) : Prop :=
  AristotelianCategoriesClosed C.categories ∧ SubstanceOntologyClosed C.substance ∧
  PredicationBridgesClosed C.predication ∧ C.lemmaStatement ∧ C.lemmaProof

theorem categories_lemma_proof_closed_from_evidence
    (C : CategoriesLemmaProofPackage) (E : CategoriesLemmaProofEvidence C) :
    CategoriesLemmaProofClosed C := by
  exact And.intro E.categoriesClosed
    (And.intro E.substanceClosed
      (And.intro E.predicationClosed
        (And.intro E.lemmaStatementClosed E.lemmaProofClosed)))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse