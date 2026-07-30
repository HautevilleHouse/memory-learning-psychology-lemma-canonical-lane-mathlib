import HautevilleHouse.MemoryLearningPsychologyLemmaCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.MemoryLearningPsychologyLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure MemoryRetrievalBridge where
  cueStrength : Prop
  patternCompletion : Prop
  interferenceResistance : Prop
  cueStrengthClosed : cueStrength
  patternCompletionClosed : patternCompletion
  interferenceResistanceClosed : interferenceResistance

def MemoryRetrievalBridgeClosed (M : MemoryRetrievalBridge) : Prop :=
  M.cueStrength ∧ M.patternCompletion ∧ M.interferenceResistance

theorem memory_retrieval_bridge_closed_from_evidence (M : MemoryRetrievalBridge) :
    MemoryRetrievalBridgeClosed M := by
  exact And.intro M.cueStrengthClosed (And.intro M.patternCompletionClosed M.interferenceResistanceClosed)

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse