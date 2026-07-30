import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure MemoryEncodingConsolidation where
  encodingPhase : Prop
  consolidationPhase : Prop
  retrievalPhase : Prop
  synapticPlasticity : Prop

structure MemoryEncodingConsolidationEvidence (M : MemoryEncodingConsolidation) where
  encodingPhaseClosed : M.encodingPhase
  consolidationPhaseClosed : M.consolidationPhase
  retrievalPhaseClosed : M.retrievalPhase
  synapticPlasticityClosed : M.synapticPlasticity

def MemoryEncodingConsolidationClosed (M : MemoryEncodingConsolidation) : Prop :=
  M.encodingPhase ∧ M.consolidationPhase ∧ M.retrievalPhase ∧ M.synapticPlasticity

theorem memory_encoding_consolidation_closed_from_evidence (M : MemoryEncodingConsolidation) (E : MemoryEncodingConsolidationEvidence M) : MemoryEncodingConsolidationClosed M := by
  exact And.intro E.encodingPhaseClosed (And.intro E.consolidationPhaseClosed (And.intro E.retrievalPhaseClosed E.synapticPlasticityClosed))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse