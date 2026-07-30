import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure SpacingEffectPackage where
  spacingGradient : Type u
  retentionCurve : Type v
  optimalIntervalModel : Prop
  lagEffectControl : Prop
  practiceSchedule : Prop

structure SpacingEffectEvidence (S : SpacingEffectPackage) where
  spacingGradientClosed : S.spacingGradient
  retentionCurveClosed : S.retentionCurve
  optimalIntervalModelClosed : S.optimalIntervalModel
  lagEffectControlClosed : S.lagEffectControl
  practiceScheduleClosed : S.practiceSchedule

def SpacingEffectClosed (S : SpacingEffectPackage) : Prop :=
  S.spacingGradient ∧ S.retentionCurve ∧ S.optimalIntervalModel ∧ S.lagEffectControl ∧ S.practiceSchedule

theorem spacing_effect_closed_from_evidence (S : SpacingEffectPackage) (Ev : SpacingEffectEvidence S) :
    SpacingEffectClosed S := by
  exact And.intro Ev.spacingGradientClosed (And.intro Ev.retentionCurveClosed (And.intro Ev.optimalIntervalModelClosed (And.intro Ev.lagEffectControlClosed Ev.practiceScheduleClosed)))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse