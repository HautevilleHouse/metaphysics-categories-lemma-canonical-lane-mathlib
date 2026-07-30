import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesLemmaCanonicalLaneLean

structure ChangeAndMotionPackage where
  changeType : Type u
  motionType : Type v
  quantitativeChange : Prop
  qualitativeChange : Prop
  substantialChange : Prop
  locomotion : Prop
  generationCorruption : Prop
  contrarietyBasis : Prop

structure ChangeAndMotionEvidence (C : ChangeAndMotionPackage) where
  quantitativeChangeClosed : C.quantitativeChange
  qualitativeChangeClosed : C.qualitativeChange
  substantialChangeClosed : C.substantialChange
  locomotionClosed : C.locomotion
  generationCorruptionClosed : C.generationCorruption
  contrarietyBasisClosed : C.contrarietyBasis

def ChangeAndMotionClosed (C : ChangeAndMotionPackage) : Prop :=
  C.quantitativeChange ∧ C.qualitativeChange ∧ C.substantialChange ∧
  C.locomotion ∧ C.generationCorruption ∧ C.contrarietyBasis

theorem change_and_motion_closed_from_evidence (C : ChangeAndMotionPackage)
    (E : ChangeAndMotionEvidence C) : ChangeAndMotionClosed C := by
  exact And.intro E.quantitativeChangeClosed
    (And.intro E.qualitativeChangeClosed
      (And.intro E.substantialChangeClosed
        (And.intro E.locomotionClosed
          (And.intro E.generationCorruptionClosed E.contrarietyBasisClosed))))

end MetaphysicsCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
