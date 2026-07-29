import GamesInvolvingTopologySetTheoryCanonicalLaneLean.GameObject

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure GameClassPackage where
  gameType : Type
  winningStrategy : Prop
  determinacyProperty : Prop
  topologicalEmbedding : Prop
  borelSet : Prop

structure GameClassEvidence (G : GameClassPackage) where
  winningStrategyClosed : G.winningStrategy
  determinacyPropertyClosed : G.determinacyProperty
  topologicalEmbeddingClosed : G.topologicalEmbedding
  borelSetClosed : G.borelSet

def GameClassClosed (G : GameClassPackage) : Prop :=
  G.winningStrategy ∧ G.determinacyProperty ∧ G.topologicalEmbedding ∧ G.borelSet

theorem game_class_closed_from_evidence (G : GameClassPackage) (E : GameClassEvidence G) :
    GameClassClosed G := by
  exact And.intro E.winningStrategyClosed
    (And.intro E.determinacyPropertyClosed
      (And.intro E.topologicalEmbeddingClosed E.borelSetClosed))

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse
