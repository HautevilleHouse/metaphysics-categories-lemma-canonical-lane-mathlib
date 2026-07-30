import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure SyllogismPackage where
  subject : Type u
  predicate : Type v
  universalQuantifier : Prop
  particularQuantifier : Prop
  affirmativeForm : Prop
  negativeForm : Prop
  categoricalProposition : Prop

structure SyllogismEvidence (S : SyllogismPackage) where
  universalQuantifierClosed : S.universalQuantifier
  particularQuantifierClosed : S.particularQuantifier
  affirmativeFormClosed : S.affirmativeForm
  negativeFormClosed : S.negativeForm
  categoricalPropositionClosed : S.categoricalProposition

def SyllogismClosed (S : SyllogismPackage) : Prop :=
  S.universalQuantifier ∧ S.particularQuantifier ∧
  S.affirmativeForm ∧ S.negativeForm ∧ S.categoricalProposition

theorem syllogism_closed_from_evidence (S : SyllogismPackage) (E : SyllogismEvidence S) :
    SyllogismClosed S :=
  And.intro E.universalQuantifierClosed
    (And.intro E.particularQuantifierClosed
      (And.intro E.affirmativeFormClosed
        (And.intro E.negativeFormClosed E.categoricalPropositionClosed)))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse