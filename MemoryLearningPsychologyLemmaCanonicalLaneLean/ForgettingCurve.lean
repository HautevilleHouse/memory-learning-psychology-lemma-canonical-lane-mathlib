import MemoryLearningPsychologyLemmaCanonicalLaneLean.RetrievalPractice

/-!
# Forgetting Curve Package
-/

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure ForgettingCurvePackage {M : MemoryTracePackage} {A : AttentionAllocationPackage M} {R : RetrievalPracticePackage A} where
  initialRetention : Prop
  exponentialDecay : Prop
  retentionIntervals : Prop
  spacingEffect : Prop

structure ForgettingCurveEvidence {M : MemoryTracePackage} {A : AttentionAllocationPackage M} {R : RetrievalPracticePackage A} (F : ForgettingCurvePackage R) where
  initialRetentionClosed : F.initialRetention
  exponentialDecayClosed : F.exponentialDecay
  retentionIntervalsClosed : F.retentionIntervals
  spacingEffectClosed : F.spacingEffect

def ForgettingCurveClosed {M : MemoryTracePackage} {A : AttentionAllocationPackage M} {R : RetrievalPracticePackage A} (F : ForgettingCurvePackage R) : Prop :=
  F.initialRetention ∧ F.exponentialDecay ∧ F.retentionIntervals ∧ F.spacingEffect

theorem forgetting_curve_closed_from_evidence {M : MemoryTracePackage} {A : AttentionAllocationPackage M} {R : RetrievalPracticePackage A} (F : ForgettingCurvePackage R) (Ev : ForgettingCurveEvidence F) : ForgettingCurveClosed F := by
  exact And.intro Ev.initialRetentionClosed (And.intro Ev.exponentialDecayClosed (And.intro Ev.retentionIntervalsClosed Ev.spacingEffectClosed))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse
