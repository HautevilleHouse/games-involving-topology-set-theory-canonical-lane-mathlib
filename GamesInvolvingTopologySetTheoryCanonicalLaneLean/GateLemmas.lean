import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

definition gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
  gateClosed A :=
  exact A.gateWitness

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse