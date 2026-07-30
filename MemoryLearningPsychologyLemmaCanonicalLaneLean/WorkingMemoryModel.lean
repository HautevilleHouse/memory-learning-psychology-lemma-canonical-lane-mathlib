import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure WorkingMemoryModelPackage where
  centralExecutive : Prop
  phonologicalLoop : Prop
  visuospatialSketchpad : Prop
  episodicBuffer : Prop
  capacityLimit : Prop

structure WorkingMemoryModelEvidence (W : WorkingMemoryModelPackage) where
  centralExecutiveClosed : W.centralExecutive
  phonologicalLoopClosed : W.phonologicalLoop
  visuospatialSketchpadClosed : W.visuospatialSketchpad
  episodicBufferClosed : W.episodicBuffer
  capacityLimitClosed : W.capacityLimit

def WorkingMemoryModelClosed (W : WorkingMemoryModelPackage) : Prop :=
  W.centralExecutive ∧ W.phonologicalLoop ∧ W.visuospatialSketchpad ∧ W.episodicBuffer ∧ W.capacityLimit

theorem working_memory_model_closed_from_evidence (W : WorkingMemoryModelPackage) (E : WorkingMemoryModelEvidence W) : WorkingMemoryModelClosed W := by
  exact And.intro E.centralExecutiveClosed (And.intro E.phonologicalLoopClosed (And.intro E.visuospatialSketchpadClosed (And.intro E.episodicBufferClosed E.capacityLimitClosed)))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse