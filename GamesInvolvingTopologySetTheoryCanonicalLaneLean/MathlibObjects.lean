import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure GamesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GamesAdmittedObject where
  space : GamesSpace
  topologicalProperty : Prop
  gameProperty : Prop
  model : Type
  modelTopology : TopologicalSpace model
  strategicEquivalence : Prop
  conclusion : strategicEquivalence

structure GamesEndgameState where
  object : GamesAdmittedObject

def GamesWitnessClosed (O : GamesAdmittedObject) : Prop :=
  O.strategicEquivalence

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse