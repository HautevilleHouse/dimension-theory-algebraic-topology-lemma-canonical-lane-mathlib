import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure HomologyDimensionPackage where
  chainComplex : Type u
  homologyGroups : ℕ → Type v
  dimensionVanishing : ℕ → Prop
  longExactSequenceDimensionBound : Prop
  universalCoefficientDimensionShift : Prop

structure HomologyDimensionEvidence (H : HomologyDimensionPackage) where
  dimensionVanishingClosed : ∀ n, H.dimensionVanishing n
  longExactSequenceDimensionBoundClosed : H.longExactSequenceDimensionBound
  universalCoefficientDimensionShiftClosed : H.universalCoefficientDimensionShift

def HomologyDimensionClosed (H : HomologyDimensionPackage) : Prop :=
  (∀ n, H.dimensionVanishing n) ∧ H.longExactSequenceDimensionBound ∧
  H.universalCoefficientDimensionShift

theorem homology_dimension_closed_from_evidence (H : HomologyDimensionPackage)
    (E : HomologyDimensionEvidence H) : HomologyDimensionClosed H :=
  And.intro E.dimensionVanishingClosed
    (And.intro E.longExactSequenceDimensionBoundClosed
      E.universalCoefficientDimensionShiftClosed)

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse