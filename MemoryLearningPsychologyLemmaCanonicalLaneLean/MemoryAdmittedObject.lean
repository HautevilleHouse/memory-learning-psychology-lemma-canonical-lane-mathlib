import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Set.Basic

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure MemorySpace where
  carrier : Type
  encoding : carrier → carrier → Prop

def associativeBinding {M : MemorySpace} (x y : M.carrier) : Prop :=
  M.encoding x y

structure MemoryAdmittedObject where
  space : MemorySpace
  retrieval : MemorySpace.carrier → Prop
  consolidation : Prop
  recallThreshold : Prop
  conclusion : consolidation ∧ recallThreshold

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse