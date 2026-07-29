import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure CohomologyDimensionPackage where
  cohomologyGroups : Type u -> Nat -> Type v
  dimensionBound : Nat -> Prop
  dimensionBoundClosed : dimensionBound 0

structure CohomologyDimensionEvidence (C : CohomologyDimensionPackage) where
  dimensionBoundClosed : C.dimensionBound 0

def CohomologyDimensionClosed (C : CohomologyDimensionPackage) : Prop :=
  C.dimensionBound 0

theorem cohomology_dimension_closed_from_evidence
    (C : CohomologyDimensionPackage) (E : CohomologyDimensionEvidence C) :
    CohomologyDimensionClosed C := by
  exact E.dimensionBoundClosed

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse