import GamesInvolvingTopologySetTheoryCanonicalLaneLean.PositionalGame

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure TopologicalGamePackage (P : PositionalGamePackage) where
  openSets : Set (Set P.board)
  closedSets : Set (Set P.board)
  borelComplexity : Prop
  determinacyResult : Prop

structure TopologicalGameEvidence {P : PositionalGamePackage} (T : TopologicalGamePackage P) where
  borelComplexityClosed : T.borelComplexity
  determinacyResultClosed : T.determinacyResult

def TopologicalGameClosed {P : PositionalGamePackage} (T : TopologicalGamePackage P) : Prop :=
  T.borelComplexity ∧ T.determinacyResult

theorem topological_game_closed_from_evidence
    {P : PositionalGamePackage} (T : TopologicalGamePackage P)
    (E : TopologicalGameEvidence T) : TopologicalGameClosed T := by
  exact And.intro E.borelComplexityClosed E.determinacyResultClosed

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse
