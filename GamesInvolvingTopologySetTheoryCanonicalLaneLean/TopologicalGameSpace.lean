import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure TopologicalGameSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  gameStructure : (Player → Set carrier) → Prop
  winSet : Set carrier

def TopologicalGameSpaceClosed (T : TopologicalGameSpace) : Prop :=
  T.gameStructure (λ _ => T.winSet)

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse