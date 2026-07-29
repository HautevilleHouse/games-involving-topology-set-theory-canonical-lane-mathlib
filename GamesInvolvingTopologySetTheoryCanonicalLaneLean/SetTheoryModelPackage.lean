import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure SetTheoryModelPackage where
  modelType : Type
  forcingCondition : Prop
  gameInterpretation : Prop
  independenceResult : Prop

structure SetTheoryModelEvidence (M : SetTheoryModelPackage) where
  forcingConditionClosed : M.forcingCondition
  gameInterpretationClosed : M.gameInterpretation
  independenceResultClosed : M.independenceResult

def SetTheoryModelClosed (M : SetTheoryModelPackage) : Prop :=
  M.forcingCondition ∧ M.gameInterpretation ∧ M.independenceResult

theorem set_theory_model_closed_from_evidence (M : SetTheoryModelPackage)
    (E : SetTheoryModelEvidence M) : SetTheoryModelClosed M := by
  exact And.intro E.forcingConditionClosed
    (And.intro E.gameInterpretationClosed E.independenceResultClosed)

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse