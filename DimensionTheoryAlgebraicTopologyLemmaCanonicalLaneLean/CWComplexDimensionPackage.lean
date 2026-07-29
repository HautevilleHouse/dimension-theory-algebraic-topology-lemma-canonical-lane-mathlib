import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure CWComplexDimensionPackage where
  cwComplex : Type u
  dimension : ℕ
  dimensionWellDefined : Prop
  cellAttachmentInduction : Prop
  skeletonFiltration : Prop
  homologyDimensionBound : Prop

structure CWComplexDimensionEvidence (C : CWComplexDimensionPackage) where
  dimensionWellDefinedClosed : C.dimensionWellDefined
  cellAttachmentInductionClosed : C.cellAttachmentInduction
  skeletonFiltrationClosed : C.skeletonFiltration
  homologyDimensionBoundClosed : C.homologyDimensionBound

def CWComplexDimensionClosed (C : CWComplexDimensionPackage) : Prop :=
  C.dimensionWellDefined ∧ C.cellAttachmentInduction ∧
  C.skeletonFiltration ∧ C.homologyDimensionBound

theorem cw_complex_dimension_closed_from_evidence (C : CWComplexDimensionPackage)
    (E : CWComplexDimensionEvidence C) : CWComplexDimensionClosed C :=
  And.intro E.dimensionWellDefinedClosed
    (And.intro E.cellAttachmentInductionClosed
      (And.intro E.skeletonFiltrationClosed E.homologyDimensionBoundClosed))

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse