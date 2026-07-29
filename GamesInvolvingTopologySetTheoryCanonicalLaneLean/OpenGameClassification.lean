import GamesInvolvingTopologySetTheoryCanonicalLaneLean.DeterminacyBridge

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure OpenGamePackage where
  gameSpace : Type u
  winningSet : Set (gameSpace)
  openWinningCondition : IsOpen winningSet
  determinacyClaim : Prop

structure OpenGameEvidence (G : OpenGamePackage) where
  openWinningConditionClosed : G.openWinningCondition
  determinacyClaimClosed : G.determinacyClaim

def OpenGameClosed (G : OpenGamePackage) : Prop :=
  G.openWinningCondition ∧ G.determinacyClaim

theorem open_game_closed_from_evidence (G : OpenGamePackage) (E : OpenGameEvidence G) : OpenGameClosed G :=
  And.intro E.openWinningConditionClosed E.determinacyClaimClosed

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse