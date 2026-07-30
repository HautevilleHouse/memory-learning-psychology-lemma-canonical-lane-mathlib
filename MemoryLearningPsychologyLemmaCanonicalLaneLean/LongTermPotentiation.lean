import MemoryLearningPsychologyLemmaCanonicalLaneLean.EncodingConsolidation

/-!
# Long-Term Potentiation Package
-/

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure LongTermPotentiationPackage {M : MemoryTracePackage} {E : EncodingConsolidationPackage M} where
  glutamateRelease : Prop
  ndmaReceptorActivation : Prop
  ampaReceptorInsertion : Prop
  structuralDendriticChanges : Prop

structure LongTermPotentiationEvidence {M : MemoryTracePackage} {E : EncodingConsolidationPackage M} (L : LongTermPotentiationPackage E) where
  glutamateReleaseClosed : L.glutamateRelease
  ndmaReceptorActivationClosed : L.ndmaReceptorActivation
  ampaReceptorInsertionClosed : L.ampaReceptorInsertion
  structuralDendriticChangesClosed : L.structuralDendriticChanges

def LongTermPotentiationClosed {M : MemoryTracePackage} {E : EncodingConsolidationPackage M} (L : LongTermPotentiationPackage E) : Prop :=
  L.glutamateRelease ∧ L.ndmaReceptorActivation ∧ L.ampaReceptorInsertion ∧ L.structuralDendriticChanges

theorem long_term_potentiation_closed_from_evidence {M : MemoryTracePackage} {E : EncodingConsolidationPackage M} (L : LongTermPotentiationPackage E) (Ev : LongTermPotentiationEvidence L) : LongTermPotentiationClosed L := by
  exact And.intro Ev.glutamateReleaseClosed (And.intro Ev.ndmaReceptorActivationClosed (And.intro Ev.ampaReceptorInsertionClosed Ev.structuralDendriticChangesClosed))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse
