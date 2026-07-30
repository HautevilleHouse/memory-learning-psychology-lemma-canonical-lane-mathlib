import MemoryLearningPsychologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def memoryProjection : Projection MemoryEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem memory_projection_idempotent (x : MemoryEndgameState) :
    memoryProjection.toFun (memoryProjection.toFun x) = memoryProjection.toFun x := by
  exact memoryProjection.idempotent x

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse
