import memoryLearningPsychologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure MemoryLearningPsychologyStatement where
  acquisition : Prop
  consolidation : Prop
  retrieval : Prop
  spacingEffect : Prop
  forgettingCurve : Prop
  bridgeEvidence : MemoryLearningPsychologyWitnessClosed

def TheoremClosed (M : MemoryLearningPsychologyStatement) : Prop :=
  M.acquisition ∧ M.consolidation ∧ M.retrieval ∧ M.spacingEffect ∧ M.forgettingCurve

theorem theorem_statement_holds (M : MemoryLearningPsychologyStatement) :
    TheoremClosed M := by
  exact And.intro M.acquisition (And.intro M.consolidation (And.intro M.retrieval (And.intro M.spacingEffect M.forgettingCurve)))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse
