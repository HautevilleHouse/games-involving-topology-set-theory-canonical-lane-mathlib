import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure GamePosition where
  carrier : Type
  topology : TopologicalSpace carrier
  winningStrategies : Set (Player → Set carrier)
  topologicalGameClosure : Prop

def GamePositionClosed (G : GamePosition) : Prop :=
  G.topologicalGameClosure

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse