import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MemoryLearningPsychologyLemmaCanonicalLaneLean.MemoryEncodingConsolidation
import HautevilleHouse.MemoryLearningPsychologyLemmaCanonicalLaneLean.HebbianPlasticityLemma
import HautevilleHouse.MemoryLearningPsychologyLemmaCanonicalLaneLean.MemoryRetrievalCue
import HautevilleHouse.MemoryLearningPsychologyLemmaCanonicalLaneLean.WorkingMemoryModel
import HautevilleHouse.MemoryLearningPsychologyLemmaCanonicalLaneLean.MemoryInterference

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure MemoryLearningAnalyticFoundation where
  encodingConsolidation : MemoryEncodingConsolidation
  encodingConsolidationEvidence : MemoryEncodingConsolidationEvidence encodingConsolidation
  hebbianPlasticity : HebbianPlasticityPackage
  hebbianPlasticityEvidence : HebbianPlasticityEvidence hebbianPlasticity
  memoryRetrievalCue : MemoryRetrievalCuePackage
  memoryRetrievalCueEvidence : MemoryRetrievalCueEvidence memoryRetrievalCue
  workingMemoryModel : WorkingMemoryModelPackage
  workingMemoryModelEvidence : WorkingMemoryModelEvidence workingMemoryModel
  memoryInterference : MemoryInterferencePackage
  memoryInterferenceEvidence : MemoryInterferenceEvidence memoryInterference

def MemoryLearningAnalyticFoundationClosed (A : MemoryLearningAnalyticFoundation) : Prop :=
  MemoryEncodingConsolidationClosed A.encodingConsolidation ∧
  HebbianPlasticityClosed A.hebbianPlasticity ∧
  MemoryRetrievalCueClosed A.memoryRetrievalCue ∧
  WorkingMemoryModelClosed A.workingMemoryModel ∧
  MemoryInterferenceClosed A.memoryInterference

theorem memory_learning_analytic_foundation_closed_from_evidence (A : MemoryLearningAnalyticFoundation) : MemoryLearningAnalyticFoundationClosed A := by
  exact And.intro (memory_encoding_consolidation_closed_from_evidence A.encodingConsolidation A.encodingConsolidationEvidence)
    (And.intro (hebbian_plasticity_closed_from_evidence A.hebbianPlasticity A.hebbianPlasticityEvidence)
      (And.intro (memory_retrieval_cue_closed_from_evidence A.memoryRetrievalCue A.memoryRetrievalCueEvidence)
        (And.intro (working_memory_model_closed_from_evidence A.workingMemoryModel A.workingMemoryModelEvidence)
          (memory_interference_closed_from_evidence A.memoryInterference A.memoryInterferenceEvidence))))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse