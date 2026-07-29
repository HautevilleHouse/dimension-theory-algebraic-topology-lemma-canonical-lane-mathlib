import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure CohomologicalDimensionPackage where
  space : Type u
  sheafType : Type v
  cohomologyGroups : ℕ → Type w
  dimensionVanishing : ℕ → Prop
  cupProductLengthBound : Prop
  universalCoefficientDimensionShift : Prop

structure CohomologicalDimensionEvidence (C : CohomologicalDimensionPackage) where
  dimensionVanishingClosed : ∀ n, C.dimensionVanishing n
  cupProductLengthBoundClosed : C.cupProductLengthBound
  universalCoefficientDimensionShiftClosed : C.universalCoefficientDimensionShift

def CohomologicalDimensionClosed (C : CohomologicalDimensionPackage) : Prop :=
  (∀ n, C.dimensionVanishing n) ∧ C.cupProductLengthBound ∧
  C.universalCoefficientDimensionShift

theorem cohomological_dimension_closed_from_evidence
    (C : CohomologicalDimensionPackage) (E : CohomologicalDimensionEvidence C) :
    CohomologicalDimensionClosed C :=
  And.intro E.dimensionVanishingClosed
    (And.intro E.cupProductLengthBoundClosed
      E.universalCoefficientDimensionShiftClosed)

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse