import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure CoveringDimensionPackage where
  spaceType : Type u
  topology : TopologicalSpace spaceType
  openCovers : Type v
  refinementCondition : (openCovers : Type v) → Prop
  dimension : Nat

structure CoveringDimensionEvidence (P : CoveringDimensionPackage) where
  refinementConditionClosed : ∀ (cov : P.openCovers), P.refinementCondition cov
  dimensionClosed : P.dimension = 0

def CoveringDimensionClosed (P : CoveringDimensionPackage) : Prop :=
  (∀ (cov : P.openCovers), P.refinementCondition cov) ∧
  P.dimension = 0

theorem covering_dimension_closed_from_evidence
  (P : CoveringDimensionPackage) (E : CoveringDimensionEvidence P) :
  CoveringDimensionClosed P := by
  exact And.intro E.refinementConditionClosed E.dimensionClosed

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse
