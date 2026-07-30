import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure EncodingConsolidationPackage where
  encodingType : Type u
  memoryTrace : Type v
  consolidationInterval : Prop
  hippocampalReplay : Prop
  synapticPlasticity : Prop

structure EncodingConsolidationEvidence (E : EncodingConsolidationPackage) where
  encodingTypeClosed : E.encodingType
  memoryTraceClosed : E.memoryTrace
  consolidationIntervalClosed : E.consolidationInterval
  hippocampalReplayClosed : E.hippocampalReplay
  synapticPlasticityClosed : E.synapticPlasticity

def EncodingConsolidationClosed (E : EncodingConsolidationPackage) : Prop :=
  E.encodingType ∧ E.memoryTrace ∧ E.consolidationInterval ∧ E.hippocampalReplay ∧ E.synapticPlasticity

theorem encoding_consolidation_closed_from_evidence (E : EncodingConsolidationPackage) (Ev : EncodingConsolidationEvidence E) :
    EncodingConsolidationClosed E := by
  exact And.intro Ev.encodingTypeClosed (And.intro Ev.memoryTraceClosed (And.intro Ev.consolidationIntervalClosed (And.intro Ev.hippocampalReplayClosed Ev.synapticPlasticityClosed)))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse