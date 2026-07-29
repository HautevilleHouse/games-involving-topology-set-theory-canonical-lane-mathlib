import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

definition bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.gameClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
  bridgeClosed A :=
  exact A.object.conclusion

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse