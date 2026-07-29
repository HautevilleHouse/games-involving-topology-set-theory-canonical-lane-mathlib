import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure InfiniteGamePackage where
  playerCount : Nat
  moveStructure : Type
  payoffFunction : Prop
  equilibriumExistence : Prop

structure InfiniteGameEvidence (G : InfiniteGamePackage) where
  payoffFunctionClosed : G.payoffFunction
  equilibriumExistenceClosed : G.equilibriumExistence

def InfiniteGameClosed (G : InfiniteGamePackage) : Prop :=
  G.payoffFunction ∧ G.equilibriumExistence

theorem infinite_game_closed_from_evidence (G : InfiniteGamePackage)
    (E : InfiniteGameEvidence G) : InfiniteGameClosed G := by
  exact And.intro E.payoffFunctionClosed E.equilibriumExistenceClosed

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse