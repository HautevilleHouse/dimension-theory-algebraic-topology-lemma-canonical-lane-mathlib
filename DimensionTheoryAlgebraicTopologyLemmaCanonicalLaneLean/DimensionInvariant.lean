import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure TopologicalSpaceDimension where
  topologicalSpace : Type u → Type v
  coveringDimension : Nat → Prop
  inductiveDimension : Nat → Prop
  coveringDimensionDefined : Prop
  inductiveDimensionDefined : Prop

structure DimensionInvariantEvidence (D : TopologicalSpaceDimension) where
  coveringDimensionDefinedClosed : D.coveringDimensionDefined
  inductiveDimensionDefinedClosed : D.inductiveDimensionDefined

def DimensionInvariantClosed (D : TopologicalSpaceDimension) : Prop :=
  D.coveringDimensionDefined ∧ D.inductiveDimensionDefined

theorem dimension_invariant_closed_from_evidence
    (D : TopologicalSpaceDimension) (E : DimensionInvariantEvidence D) :
    DimensionInvariantClosed D := by
  exact And.intro E.coveringDimensionDefinedClosed E.inductiveDimensionDefinedClosed

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse