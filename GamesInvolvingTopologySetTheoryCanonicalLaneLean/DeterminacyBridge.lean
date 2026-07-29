import canonicalLaneMathlib.AdmissibleClass
import GamesInvolvingTopologySetTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GameWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse