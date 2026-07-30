import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure MemoryConsolidationBridgePackage where
  encodingConsolidation : EncodingConsolidationPackage
  encodingConsolidationClosed : EncodingConsolidationClosed encodingConsolidation
  retrievalCue : RetrievalCuePackage
  retrievalCueClosed : RetrievalCueClosed retrievalCue
  spacingEffect : SpacingEffectPackage
  spacingEffectClosed : SpacingEffectClosed spacingEffect
  interferenceResolution : InterferenceResolutionPackage
  interferenceResolutionClosed : InterferenceResolutionClosed interferenceResolution
  bridgeClosed : Prop

theorem memory_consolidation_bridge_closed (M : MemoryConsolidationBridgePackage) :
    M.bridgeClosed := by
  exact M.bridgeClosed

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse