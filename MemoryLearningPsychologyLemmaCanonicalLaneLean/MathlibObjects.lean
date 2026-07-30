import MemoryLearningPsychologyLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MemorySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MemoryAdmittedObject where
  space : MemorySpace
  memoryTrace : Prop
  learningParadigm : Prop
  retrievalModel : Type
  retrievalTopology : TopologicalSpace retrievalModel
  retrievable : Prop
  conclusion : retrievable

structure MemoryEndgameState where
  object : MemoryAdmittedObject

def MemoryWitnessClosed (O : MemoryAdmittedObject) : Prop :=
  O.retrievable

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse
