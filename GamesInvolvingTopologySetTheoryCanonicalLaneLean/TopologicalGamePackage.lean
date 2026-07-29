import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure TopologicalGamePackage where
  gameSpace : Type
  topology : TopologicalSpace gameSpace
  winningCondition : Prop
  strategyExistence : Prop
  determinacyResult : Prop

structure TopologicalGameEvidence (P : TopologicalGamePackage) where
  winningConditionClosed : P.winningCondition
  strategyExistenceClosed : P.strategyExistence
  determinacyResultClosed : P.determinacyResult

def TopologicalGameClosed (P : TopologicalGamePackage) : Prop :=
  P.winningCondition ∧ P.strategyExistence ∧ P.determinacyResult

theorem topological_game_closed_from_evidence (P : TopologicalGamePackage)
    (E : TopologicalGameEvidence P) : TopologicalGameClosed P := by
  exact And.intro E.winningConditionClosed
    (And.intro E.strategyExistenceClosed E.determinacyResultClosed)

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse