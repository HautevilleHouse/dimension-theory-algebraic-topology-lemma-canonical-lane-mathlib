import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure MayerVietorisDimensionPackage where
  space : Type u
  topology : TopologicalSpace space
  openCover : Type v
  relativeDimensionBound : Prop
  dimensionAdditivity : Prop
  excisionDimensionBound : Prop

structure MayerVietorisDimensionEvidence (M : MayerVietorisDimensionPackage) where
  relativeDimensionBoundClosed : M.relativeDimensionBound
  dimensionAdditivityClosed : M.dimensionAdditivity
  excisionDimensionBoundClosed : M.excisionDimensionBound

def MayerVietorisDimensionClosed (M : MayerVietorisDimensionPackage) : Prop :=
  M.relativeDimensionBound ∧ M.dimensionAdditivity ∧ M.excisionDimensionBound

theorem mayer_vietoris_dimension_closed_from_evidence
    (M : MayerVietorisDimensionPackage) (E : MayerVietorisDimensionEvidence M) :
    MayerVietorisDimensionClosed M :=
  And.intro E.relativeDimensionBoundClosed
    (And.intro E.dimensionAdditivityClosed E.excisionDimensionBoundClosed)

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse