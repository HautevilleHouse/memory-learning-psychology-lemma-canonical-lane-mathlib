import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure SpacingEffect where
  optimalIntervalRatio : Float
  repetitionGainSpacing : Float
  lagEffectCoeff : Float
  lagThreshold : Float

structure SpacingEffectPackage (S : SpacingEffect) where
  optimalIntervalRatioPositive : S.optimalIntervalRatio > 0
  repetitionGainSpacingPositive : S.repetitionGainSpacing > 0
  lagEffectConstrained : S.lagEffectCoeff >= 0 ∧ S.lagEffectCoeff <= 1
  lagThresholdPositive : S.lagThreshold > 0
  spacingEffectMonotonicity : Prop
  pureSpacingGainVanishes : Prop

structure SpacingEffectEvidence {S : SpacingEffect} (P : SpacingEffectPackage S) where
  optimalIntervalRatioPositiveClosed : P.optimalIntervalRatioPositive
  repetitionGainSpacingPositiveClosed : P.repetitionGainSpacingPositive
  lagEffectConstrainedClosed : P.lagEffectConstrained
  lagThresholdPositiveClosed : P.lagThresholdPositive
  spacingEffectMonotonicityClosed : P.spacingEffectMonotonicity
  pureSpacingGainVanishesClosed : P.pureSpacingGainVanishes

def SpacingEffectClosed {S : SpacingEffect} (P : SpacingEffectPackage S) : Prop :=
  P.optimalIntervalRatioPositive ∧ P.repetitionGainSpacingPositive ∧
  P.lagEffectConstrained ∧ P.lagThresholdPositive ∧
  P.spacingEffectMonotonicity ∧ P.pureSpacingGainVanishes

theorem spacing_effect_closed_from_evidence
    {S : SpacingEffect} (P : SpacingEffectPackage S) (E : SpacingEffectEvidence P) :
    SpacingEffectClosed P := by
  exact And.intro E.optimalIntervalRatioPositiveClosed
    (And.intro E.repetitionGainSpacingPositiveClosed
      (And.intro E.lagEffectConstrainedClosed
        (And.intro E.lagThresholdPositiveClosed
          (And.intro E.spacingEffectMonotonicityClosed E.pureSpacingGainVanishesClosed))))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse