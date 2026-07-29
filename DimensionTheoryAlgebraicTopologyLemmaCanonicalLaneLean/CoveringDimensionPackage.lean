import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure CoveringDimensionPackage where
  space : Type u
  topology : TopologicalSpace space
  order : ℕ
  finiteOpenCoverRefinement : Prop
  nerveComplexDimension : Prop
  cohomologicalDimensionBound : Prop

structure CoveringDimensionEvidence (C : CoveringDimensionPackage) where
  finiteOpenCoverRefinementClosed : C.finiteOpenCoverRefinement
  nerveComplexDimensionClosed : C.nerveComplexDimension
  cohomologicalDimensionBoundClosed : C.cohomologicalDimensionBound

def CoveringDimensionClosed (C : CoveringDimensionPackage) : Prop :=
  C.finiteOpenCoverRefinement ∧ C.nerveComplexDimension ∧ C.cohomologicalDimensionBound

theorem covering_dimension_closed_from_evidence (C : CoveringDimensionPackage)
    (E : CoveringDimensionEvidence C) : CoveringDimensionClosed C :=
  And.intro E.finiteOpenCoverRefinementClosed
    (And.intro E.nerveComplexDimensionClosed E.cohomologicalDimensionBoundClosed)

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse