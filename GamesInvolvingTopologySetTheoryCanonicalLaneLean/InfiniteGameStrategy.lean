import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure InfiniteGameStrategy where
  player : Player
  strategyFunction : ℕ → carrier
  adherenceCondition : Prop
  existenceInTopology : Prop

def InfiniteGameStrategyClosed (S : InfiniteGameStrategy) : Prop :=
  S.adherenceCondition ∧ S.existenceInTopology

theorem infinite_game_strategy_closed_from_evidence (S : InfiniteGameStrategy) : InfiniteGameStrategyClosed S :=
  by exact And.intro S.adherenceCondition S.existenceInTopology

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse