import canonicalLaneMathlib.AdmissibleClass

/-!
# Retrieval Practice Effect Package

The testing effect, or retrieval practice effect, is the finding that actively
retrieving information from memory enhances long-term retention more than
passive restudy. This module formalizes the key conditions: initial study,
retrieval attempt, feedback, and delayed test.
-/

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure RetrievalPracticeEffectPackage where
  initialStudyPhase : Prop
  retrievalAttempt : Prop
  feedbackProvided : Prop
  delayedTest : Prop
  retentionBenefit : Prop

structure RetrievalPracticeEffectEvidence (R : RetrievalPracticeEffectPackage) where
  initialStudyPhaseClosed : R.initialStudyPhase
  retrievalAttemptClosed : R.retrievalAttempt
  feedbackProvidedClosed : R.feedbackProvided
  delayedTestClosed : R.delayedTest
  retentionBenefitClosed : R.retentionBenefit

def RetrievalPracticeEffectClosed (R : RetrievalPracticeEffectPackage) : Prop :=
  R.initialStudyPhase ∧ R.retrievalAttempt ∧
  R.feedbackProvided ∧ R.delayedTest ∧
  R.retentionBenefit

theorem retrieval_practice_effect_closed_from_evidence
    (R : RetrievalPracticeEffectPackage)
    (E : RetrievalPracticeEffectEvidence R) :
    RetrievalPracticeEffectClosed R := by
  exact And.intro E.initialStudyPhaseClosed
    (And.intro E.retrievalAttemptClosed
      (And.intro E.feedbackProvidedClosed
        (And.intro E.delayedTestClosed E.retentionBenefitClosed)))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse