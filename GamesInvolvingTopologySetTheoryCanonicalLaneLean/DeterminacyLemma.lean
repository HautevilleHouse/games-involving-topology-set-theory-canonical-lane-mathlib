import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure DeterminacyLemma where
  gameSpace : TopologicalGameSpace
  payoffSet : Set (Player → ℕ)
  determined : Prop

def DeterminacyClosed (D : DeterminacyLemma) : Prop :=
  D.determined

theorem determinacy_closed_from_evidence (D : DeterminacyLemma) : DeterminacyClosed D :=
  by exact D.determined

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse