import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure MemoryInterferencePackage where
  proactiveInterference : Prop
  retroactiveInterference : Prop
  similarityEffect : Prop
  retrievalCompetition : Prop

structure MemoryInterferenceEvidence (M : MemoryInterferencePackage) where
  proactiveInterferenceClosed : M.proactiveInterference
  retroactiveInterferenceClosed : M.retroactiveInterference
  similarityEffectClosed : M.similarityEffect
  retrievalCompetitionClosed : M.retrievalCompetition

def MemoryInterferenceClosed (M : MemoryInterferencePackage) : Prop :=
  M.proactiveInterference ∧ M.retroactiveInterference ∧ M.similarityEffect ∧ M.retrievalCompetition

theorem memory_interference_closed_from_evidence (M : MemoryInterferencePackage) (E : MemoryInterferenceEvidence M) : MemoryInterferenceClosed M := by
  exact And.intro E.proactiveInterferenceClosed (And.intro E.retroactiveInterferenceClosed (And.intro E.similarityEffectClosed E.retrievalCompetitionClosed))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse