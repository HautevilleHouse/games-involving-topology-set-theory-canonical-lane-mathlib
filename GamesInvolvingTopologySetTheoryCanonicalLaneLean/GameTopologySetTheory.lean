import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure TopologicalGamePosition where
  carrier : Type
  topology : TopologicalSpace carrier
  playerOneSet : Set carrier
  playerTwoSet : Set carrier

definition positionalAdvantage (P : TopologicalGamePosition) : Prop :=
  IsOpen P.playerOneSet ∨ IsOpen P.playerTwoSet

structure AdmittedGameObject where
  position : TopologicalGamePosition
  gameClosed : Prop
  winningStrategy : Prop
  conclusion : winningStrategy

definition AdmissibleClass which
  object : AdmittedGameObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse