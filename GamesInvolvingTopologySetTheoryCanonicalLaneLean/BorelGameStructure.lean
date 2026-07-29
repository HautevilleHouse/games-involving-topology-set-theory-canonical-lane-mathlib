import GamesInvolvingTopologySetTheoryCanonicalLaneLean.ForcingAndDeterminacy

/-!
# Borel Game Structure Package
-/

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure BorelGamePackage where
  payoffSet : Set (GameSpace → ℕ)
  borelClass : ℕ
  determined : Prop
  reductionProperty : Prop

structure BorelGameEvidence (B : BorelGamePackage) where
  determinedClosed : B.determined
  reductionPropertyClosed : B.reductionProperty

def BorelGameClosed (B : BorelGamePackage) : Prop :=
  B.determined ∧ B.reductionProperty

theorem borel_game_closed_from_evidence (B : BorelGamePackage)
    (E : BorelGameEvidence B) : BorelGameClosed B :=
  And.intro E.determinedClosed E.reductionPropertyClosed

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse
```