import GamesInvolvingTopologySetTheoryCanonicalLaneLean.BridgeLemmas

/-!
# Topological Game Classification Package

This module defines the classification structure for topological games.
-/

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure TopologicalGamePackage where
  gameSpace : GameSpace
  winningCondition : WinningCondition
  deterministicWin : Prop
  positionalDeterminacy : Prop
  infiniteGameResolution : Prop

structure TopologicalGameEvidence (P : TopologicalGamePackage) where
  deterministicWinClosed : P.deterministicWin
  positionalDeterminacyClosed : P.positionalDeterminacy
  infiniteGameResolutionClosed : P.infiniteGameResolution

def TopologicalGameClosed (P : TopologicalGamePackage) : Prop :=
  P.deterministicWin ∧ P.positionalDeterminacy ∧ P.infiniteGameResolution

theorem topological_game_closed_from_evidence (P : TopologicalGamePackage)
    (E : TopologicalGameEvidence P) : TopologicalGameClosed P :=
  And.intro E.deterministicWinClosed
    (And.intro E.positionalDeterminacyClosed E.infiniteGameResolutionClosed)

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse