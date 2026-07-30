import canonicalLaneMathlib.AdmissibleClass

/-!
# Interleaving Effect Package

Interleaving is a learning technique where different topics or types of problems
are mixed together during practice, as opposed to blocked practice where each
topic is practiced separately. This module formalizes the interleaving effect.
-/

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure InterleavingEffectPackage where
  multipleTopics : Prop
  variedExamples : Prop
  mixedPractice : Prop
  blockedComparison : Prop
  transferAdvantage : Prop

structure InterleavingEffectEvidence (I : InterleavingEffectPackage) where
  multipleTopicsClosed : I.multipleTopics
  variedExamplesClosed : I.variedExamples
  mixedPracticeClosed : I.mixedPractice
  blockedComparisonClosed : I.blockedComparison
  transferAdvantageClosed : I.transferAdvantage

def InterleavingEffectClosed (I : InterleavingEffectPackage) : Prop :=
  I.multipleTopics ∧ I.variedExamples ∧
  I.mixedPractice ∧ I.blockedComparison ∧
  I.transferAdvantage

theorem interleaving_effect_closed_from_evidence
    (I : InterleavingEffectPackage) (E : InterleavingEffectEvidence I) :
    InterleavingEffectClosed I := by
  exact And.intro E.multipleTopicsClosed
    (And.intro E.variedExamplesClosed
      (And.intro E.mixedPracticeClosed
        (And.intro E.blockedComparisonClosed E.transferAdvantageClosed)))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse