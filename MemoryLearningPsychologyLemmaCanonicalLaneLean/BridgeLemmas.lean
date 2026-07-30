import MemoryLearningPsychologyLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MemoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse
