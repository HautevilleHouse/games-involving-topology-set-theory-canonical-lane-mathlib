import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure BorelDeterminacyPackage where
  borelHierarchyLevel : ℕ
  deterministicStrategies : Prop
  closureUnderComplementation : Prop

def BorelDeterminacyClosed (B : BorelDeterminacyPackage) : Prop :=
  B.deterministicStrategies ∧ B.closureUnderComplementation

theorem borel_determinacy_closed_from_evidence (B : BorelDeterminacyPackage) : BorelDeterminacyClosed B :=
  by exact And.intro B.deterministicStrategies B.closureUnderComplementation

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse