import MemoryLearningPsychologyLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Memory Trace Package
-/

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure MemoryTracePackage where
  encoding : Prop
  storage : Prop
  retrieval : Prop
  traceStrength : Prop
  tracePersistence : Prop

structure MemoryTraceEvidence (M : MemoryTracePackage) where
  encodingClosed : M.encoding
  storageClosed : M.storage
  retrievalClosed : M.retrieval
  traceStrengthClosed : M.traceStrength
  tracePersistenceClosed : M.tracePersistence

def MemoryTraceClosed (M : MemoryTracePackage) : Prop :=
  M.encoding ∧ M.storage ∧ M.retrieval ∧ M.traceStrength ∧ M.tracePersistence

theorem memory_trace_closed_from_evidence (M : MemoryTracePackage) (E : MemoryTraceEvidence M) : MemoryTraceClosed M := by
  exact And.intro E.encodingClosed (And.intro E.storageClosed (And.intro E.retrievalClosed (And.intro E.traceStrengthClosed E.tracePersistenceClosed)))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse
