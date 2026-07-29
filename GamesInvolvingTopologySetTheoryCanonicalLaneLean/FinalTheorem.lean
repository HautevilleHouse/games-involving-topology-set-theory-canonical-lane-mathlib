import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

definition ConstrainedGameClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_game_endgame (A : AdmissibleClass) :
  ConstrainedGameClosure A :=
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse