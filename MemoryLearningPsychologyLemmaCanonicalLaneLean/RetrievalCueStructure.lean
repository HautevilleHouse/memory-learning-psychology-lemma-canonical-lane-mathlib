import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure RetrievalCuePackage where
  cueType : Type u
  contextBinding : Type v
  retrievalRoute : Prop
  interferenceControl : Prop
  cueDependencyModel : Prop

structure RetrievalCueEvidence (R : RetrievalCuePackage) where
  cueTypeClosed : R.cueType
  contextBindingClosed : R.contextBinding
  retrievalRouteClosed : R.retrievalRoute
  interferenceControlClosed : R.interferenceControl
  cueDependencyModelClosed : R.cueDependencyModel

def RetrievalCueClosed (R : RetrievalCuePackage) : Prop :=
  R.cueType ∧ R.contextBinding ∧ R.retrievalRoute ∧ R.interferenceControl ∧ R.cueDependencyModel

theorem retrieval_cue_closed_from_evidence (R : RetrievalCuePackage) (Ev : RetrievalCueEvidence R) :
    RetrievalCueClosed R := by
  exact And.intro Ev.cueTypeClosed (And.intro Ev.contextBindingClosed (And.intro Ev.retrievalRouteClosed (And.intro Ev.interferenceControlClosed Ev.cueDependencyModelClosed)))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse