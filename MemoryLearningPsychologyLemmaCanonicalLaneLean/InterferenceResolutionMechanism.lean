import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure InterferenceResolutionPackage where
  proactiveInterference : Type u
  retroactiveInterference : Type v
  resolutionRule : Prop
  inhibitionControl : Prop
  interferenceBound : Prop

structure InterferenceResolutionEvidence (I : InterferenceResolutionPackage) where
  proactiveInterferenceClosed : I.proactiveInterference
  retroactiveInterferenceClosed : I.retroactiveInterference
  resolutionRuleClosed : I.resolutionRule
  inhibitionControlClosed : I.inhibitionControl
  interferenceBoundClosed : I.interferenceBound

def InterferenceResolutionClosed (I : InterferenceResolutionPackage) : Prop :=
  I.proactiveInterference ∧ I.retroactiveInterference ∧ I.resolutionRule ∧ I.inhibitionControl ∧ I.interferenceBound

theorem interference_resolution_closed_from_evidence (I : InterferenceResolutionPackage) (Ev : InterferenceResolutionEvidence I) :
    InterferenceResolutionClosed I := by
  exact And.intro Ev.proactiveInterferenceClosed (And.intro Ev.retroactiveInterferenceClosed (And.intro Ev.resolutionRuleClosed (And.intro Ev.inhibitionControlClosed Ev.interferenceBoundClosed)))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse