import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure AnalyticSyntheticLemmaPackage where
  analyticJudgment : Prop
  syntheticJudgment : Prop
  aPriori : Prop
  aPosteriori : Prop
  necessaryTruth : Prop
  contingentTruth : Prop
  analyticClosed : analyticJudgment
  syntheticClosed : syntheticJudgment
  aPrioriClosed : aPriori
  aPosterioriClosed : aPosteriori
  necessaryClosed : necessaryTruth
  contingentClosed : contingentTruth

structure AnalyticSyntheticLemmaEvidence (A : AnalyticSyntheticLemmaPackage) where
  analyticJudgmentClosed : A.analyticJudgment
  syntheticJudgmentClosed : A.syntheticJudgment
  aPrioriClosed : A.aPriori
  aPosterioriClosed : A.aPosteriori
  necessaryTruthClosed : A.necessaryTruth
  contingentTruthClosed : A.contingentTruth

def AnalyticSyntheticLemmaClosed (A : AnalyticSyntheticLemmaPackage) : Prop :=
  A.analyticJudgment ∧ A.syntheticJudgment ∧ A.aPriori ∧
  A.aPosteriori ∧ A.necessaryTruth ∧ A.contingentTruth

theorem analytic_synthetic_lemma_closed_from_evidence
    (A : AnalyticSyntheticLemmaPackage) (E : AnalyticSyntheticLemmaEvidence A) :
    AnalyticSyntheticLemmaClosed A := by
  exact And.intro E.analyticJudgmentClosed
    (And.intro E.syntheticJudgmentClosed
      (And.intro E.aPrioriClosed
        (And.intro E.aPosterioriClosed
          (And.intro E.necessaryTruthClosed E.contingentTruthClosed))))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse