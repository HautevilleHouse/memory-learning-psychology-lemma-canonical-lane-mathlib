import HautevilleHouse.MemoryLearningPsychologyLemmaCanonicalLaneLean.MemoryAdmittedObject

namespace HautevilleHouse
namespace MemoryLearningPsychologyLemmaCanonicalLaneLean

structure SynapticPlasticity where
  longTermPotentiation : Prop
  structuralChange : Prop
  geneExpression : Prop
  ltpClosed : longTermPotentiation
  structuralClosed : structuralChange
  geneClosed : geneExpression

def SynapticPlasticityClosed (S : SynapticPlasticity) : Prop :=
  S.longTermPotentiation ∧ S.structuralChange ∧ S.geneExpression

theorem synaptic_plasticity_closed_from_evidence (S : SynapticPlasticity) :
    SynapticPlasticityClosed S := by
  exact And.intro S.ltpClosed (And.intro S.structuralClosed S.geneClosed)

structure ConsolidationPathway where
  encoding : Prop
  stabilization : Prop
  reconsolidation : Prop
  encodingClosed : encoding
  stabilizationClosed : stabilization
  reconsolidationClosed : reconsolidation

def ConsolidationPathwayClosed (C : ConsolidationPathway) : Prop :=
  C.encoding ∧ C.stabilization ∧ C.reconsolidation

theorem consolidation_pathway_closed_from_evidence (C : ConsolidationPathway) :
    ConsolidationPathwayClosed C := by
  exact And.intro C.encodingClosed (And.intro C.stabilizationClosed C.reconsolidationClosed)

end MemoryLearningPsychologyLemmaCanonicalLaneLean
end HautevilleHouse