import GamesInvolvingTopologySetTheoryCanonicalLaneLean.GameClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure PositionalGamePackage where
  board : Type
  winningSets : Set (Set board)
  playerSets : Set board
  winningCondition : Prop
  strategyStealing : Prop

structure PositionalGameEvidence (P : PositionalGamePackage) where
  winningConditionClosed : P.winningCondition
  strategyStealingClosed : P.strategyStealing

def PositionalGameClosed (P : PositionalGamePackage) : Prop :=
  P.winningCondition ∧ P.strategyStealing

theorem positional_game_closed_from_evidence (P : PositionalGamePackage) (E : PositionalGameEvidence P) :
    PositionalGameClosed P := by
  exact And.intro E.winningConditionClosed E.strategyStealingClosed

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse
