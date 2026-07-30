import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MemoryLearningPsychologyLemmaCanonicalLaneLean.MemoryLearningAnalyticFoundation

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure MemoryLearningAdmittedObject where
  subject : Type
  cognitiveTest : Prop
  recallAccuracy : Prop
  conclusion : recallAccuracy

structure MemoryLearningAdmissibleClass where
  object : MemoryLearningAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : MemoryLearningAdmissibleClass) : Prop :=
  A.object.conclusion

def gateClosed (A : MemoryLearningAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : MemoryLearningAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : MemoryLearningAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedMemoryLearningClosure (A : MemoryLearningAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_memory_learning_endgame (A : MemoryLearningAdmissibleClass) : ConstrainedMemoryLearningClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse