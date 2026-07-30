import MemoryLearningPsychologyLemmaCanonicalLaneLean.MemoryTrace

/-!
# Encoding Consolidation Package
-/

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure EncodingConsolidationPackage {M : MemoryTracePackage} where
  initialEncoding : Prop
  consolidationDuringSleep : Prop
  synapticWeightStabilization : Prop
  hippocampalReplay : Prop

structure EncodingConsolidationEvidence {M : MemoryTracePackage} (E : EncodingConsolidationPackage M) where
  initialEncodingClosed : E.initialEncoding
  consolidationDuringSleepClosed : E.consolidationDuringSleep
  synapticWeightStabilizationClosed : E.synapticWeightStabilization
  hippocampalReplayClosed : E.hippocampalReplay

def EncodingConsolidationClosed {M : MemoryTracePackage} (E : EncodingConsolidationPackage M) : Prop :=
  E.initialEncoding ∧ E.consolidationDuringSleep ∧ E.synapticWeightStabilization ∧ E.hippocampalReplay

theorem encoding_consolidation_closed_from_evidence {M : MemoryTracePackage} (E : EncodingConsolidationPackage M) (Ev : EncodingConsolidationEvidence E) : EncodingConsolidationClosed E := by
  exact And.intro Ev.initialEncodingClosed (And.intro Ev.consolidationDuringSleepClosed (And.intro Ev.synapticWeightStabilizationClosed Ev.hippocampalReplayClosed))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse
