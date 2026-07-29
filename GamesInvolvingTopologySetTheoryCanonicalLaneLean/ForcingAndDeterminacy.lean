import GamesInvolvingTopologySetTheoryCanonicalLaneLean.TopologicalGameClassification

/-!
# Forcing and Determinacy Package
-/

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure ForcingPackage {G : Set} (P : TopologicalGamePackage) where
  forcingPoset : PartialOrder G
  genericFilterExists : Prop
  propertyPreservedUnderForcing : Prop

structure ForcingEvidence {G : Set} {P : TopologicalGamePackage}
    (F : ForcingPackage P) where
  genericFilterExistsClosed : F.genericFilterExists
  propertyPreservedUnderForcingClosed : F.propertyPreservedUnderForcing

def ForcingClosed {G : Set} {P : TopologicalGamePackage}
    (F : ForcingPackage P) : Prop :=
  F.genericFilterExists ∧ F.propertyPreservedUnderForcing

theorem forcing_closed_from_evidence {G : Set} {P : TopologicalGamePackage}
    (F : ForcingPackage P) (E : ForcingEvidence F) : ForcingClosed F :=
  And.intro E.genericFilterExistsClosed E.propertyPreservedUnderForcingClosed

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse