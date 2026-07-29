import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure CohomologyDimension (X : Type u) where
  cohomologyGroups : ℕ → Type v
  dimensionUpperBound : ℕ
  vanishingAboveDimension : Prop
  cupLength : ℕ

structure CohomologyDimensionEvidence (X : Type u) (C : CohomologyDimension X) where
  vanishingAboveDimensionClosed : C.vanishingAboveDimension
  cupLengthClosed : C.cupLength = C.dimensionUpperBound

def CohomologyDimensionClosed (X : Type u) (C : CohomologyDimension X) : Prop :=
  C.vanishingAboveDimension ∧ C.cupLength = C.dimensionUpperBound

theorem cohomology_dimension_closed_from_evidence (X : Type u) (C : CohomologyDimension X) (E : CohomologyDimensionEvidence X C) :
    CohomologyDimensionClosed X C := by
  exact And.intro E.vanishingAboveDimensionClosed E.cupLengthClosed

end HautevilleHouse
end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean