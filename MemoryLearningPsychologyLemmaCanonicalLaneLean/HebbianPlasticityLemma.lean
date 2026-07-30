import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  preSynapticActivity : Prop
  postSynapticActivity : Prop
  synapticWeightChange : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  preSynapticActivityClosed : H.preSynapticActivity
  postSynapticActivityClosed : H.postSynapticActivity
  synapticWeightChangeClosed : H.synapticWeightChange
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.preSynapticActivity ∧ H.postSynapticActivity ∧ H.synapticWeightChange ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.preSynapticActivityClosed (And.intro E.postSynapticActivityClosed (And.intro E.synapticWeightChangeClosed (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed)))

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse