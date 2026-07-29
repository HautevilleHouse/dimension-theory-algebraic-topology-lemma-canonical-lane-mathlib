import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure CWComplexPackage where
  cells : Nat -> Type u
  attachingMaps : Type v
  characteristicMaps : Type w
  dimension : Nat -> Prop
  closureFinite : Prop
  weakTopology : Prop
  inductionSequence : Prop
  closureFiniteClosed : closureFinite
  weakTopologyClosed : weakTopology
  inductionSequenceClosed : inductionSequence

structure CWComplexEvidence (C : CWComplexPackage) where
  dimensionClosed : C.dimension C.dimension 0
  closureFiniteClosed : C.closureFinite
  weakTopologyClosed : C.weakTopology
  inductionSequenceClosed : C.inductionSequence

def CWComplexDimensionClosed (C : CWComplexPackage) : Prop :=
  C.dimension 0

theorem cw_complex_dimension_closed_from_evidence
    (C : CWComplexPackage) (E : CWComplexEvidence C) :
    CWComplexDimensionClosed C := by
  exact E.dimensionClosed

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse