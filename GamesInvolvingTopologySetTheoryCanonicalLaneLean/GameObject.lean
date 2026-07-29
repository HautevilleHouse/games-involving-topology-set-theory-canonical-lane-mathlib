import GamesInvolvingTopologySetTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure GameSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GameAdmittedObject where
  space : GameSpace
  closedProperty : Prop
  topologicalProperty : Prop
  model : Type
  modelTopology : TopologicalSpace model
  homeomorphicToModel : Prop
  conclusion : homeomorphicToModel

structure GameEndgameState where
  object : GameAdmittedObject

def GameWitnessClosed (O : GameAdmittedObject) : Prop :=
  O.homeomorphicToModel

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse
