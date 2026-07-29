import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingTopologySetTheoryCanonicalLaneLean

structure MartinMeasurePackage where
  measureSpace : Type
  weight : Type
  measureDefined : Prop
  regularity : Prop

def MartinMeasureClosed (M : MartinMeasurePackage) : Prop :=
  M.measureDefined ∧ M.regularity

theorem martin_measure_closed_from_evidence (M : MartinMeasurePackage) : MartinMeasureClosed M :=
  by exact And.intro M.measureDefined M.regularity

end GamesInvolvingTopologySetTheoryCanonicalLaneLean
end HautevilleHouse