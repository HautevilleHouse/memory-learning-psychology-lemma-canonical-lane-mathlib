import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure InterferenceModel where
  proactiveInterferenceCoeff : Float
  retroactiveInterferenceCoeff : Float
  similarityGradient : Float
  interferenceThreshold : Float

structure InterferenceModelPackage (I : InterferenceModel) where
  proactiveInterferenceConstrained : I.proactiveInterferenceCoeff > 0 ∧ I.proactiveInterferenceCoeff < 1
  retroactiveInterferenceConstrained : I.retroactiveInterferenceCoeff > 0 ∧ I.retroactiveInterferenceCoeff < 1
  similarityGradientConstrained : I.similarityGradient > 0
  interferenceThresholdConstrained : I.interferenceThreshold >= 0

structure InterferenceModelEvidence {I : InterferenceModel} (P : InterferenceModelPackage I) where
  proactiveInterferenceConstrainedClosed : P.proactiveInterferenceConstrained
  retroactiveInterferenceConstrainedClosed : P.retroactiveInterferenceConstrained
  similarityGradientConstrainedClosed : P.similarityGradientConstrained
  interferenceThresholdConstrainedClosed : P.interferenceThresholdConstrained

def InterferenceModelClosed {I : InterferenceModel} (P : InterferenceModelPackage I) : Prop :=
  P.proactiveInterferenceConstrained ∧ P.retroactiveInterferenceConstrained ∧
  P.similarityGradientConstrained ∧ P.interferenceThresholdConstrained

theorem interference_model_closed_from_evidence
    {I : InterferenceModel} (P : InterferenceModelPackage I) (E : InterferenceModelEvidence P) :
    InterferenceModelClosed P := by
  exact And.intro E.proactiveInterferenceConstrainedClosed
    (And.intro E.retroactiveInterferenceConstrainedClosed
      (And.intro E.similarityGradientConstrainedClosed E.interferenceThresholdConstrainedClosed))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse