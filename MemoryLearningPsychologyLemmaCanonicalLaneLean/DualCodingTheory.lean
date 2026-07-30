import canonicalLaneMathlib.AdmissibleClass

/-!
# Dual Coding Theory Package

Dual coding theory posits that both verbal and nonverbal (imagery) processing
enhance memory. This module formalizes the conditions: verbal encoding,
visual imagery, their integration, and the resultant memory enhancement.
-/

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure DualCodingTheoryPackage where
  verbalEncoding : Prop
  imageryEncoding : Prop
  dualProcessing : Prop
  integrationMechanism : Prop
  recallEnhancement : Prop

structure DualCodingTheoryEvidence (D : DualCodingTheoryPackage) where
  verbalEncodingClosed : D.verbalEncoding
  imageryEncodingClosed : D.imageryEncoding
  dualProcessingClosed : D.dualProcessing
  integrationMechanismClosed : D.integrationMechanism
  recallEnhancementClosed : D.recallEnhancement

def DualCodingTheoryClosed (D : DualCodingTheoryPackage) : Prop :=
  D.verbalEncoding ∧ D.imageryEncoding ∧
  D.dualProcessing ∧ D.integrationMechanism ∧
  D.recallEnhancement

theorem dual_coding_theory_closed_from_evidence
    (D : DualCodingTheoryPackage) (E : DualCodingTheoryEvidence D) :
    DualCodingTheoryClosed D := by
  exact And.intro E.verbalEncodingClosed
    (And.intro E.imageryEncodingClosed
      (And.intro E.dualProcessingClosed
        (And.intro E.integrationMechanismClosed E.recallEnhancementClosed)))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse