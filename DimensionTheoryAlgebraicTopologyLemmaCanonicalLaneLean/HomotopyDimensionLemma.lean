import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure HomotopyDimensionLemmaPackage where
  spaceType : Type u
  topology : TopologicalSpace spaceType
  homotopyGroups : ℕ → Type v
  vanishingCondition : Prop
  dimension : ℕ

structure HomotopyDimensionLemmaEvidence (P : HomotopyDimensionLemmaPackage) where
  vanishingConditionClosed : P.vanishingCondition
  dimensionClosed : P.dimension = 0

def HomotopyDimensionLemmaClosed (P : HomotopyDimensionLemmaPackage) : Prop :=
  P.vanishingCondition ∧
  P.dimension = 0

theorem homotopy_dimension_lemma_closed_from_evidence
  (P : HomotopyDimensionLemmaPackage) (E : HomotopyDimensionLemmaEvidence P) :
  HomotopyDimensionLemmaClosed P := by
  exact And.intro E.vanishingConditionClosed E.dimensionClosed

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse
