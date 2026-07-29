import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure SimplicialComplexDimensionPackage where
  vertexSet : Type u
  simplexSet : List (List (vertexSet))
  dimensionFunction : Nat
  finiteTypeCondition : Prop
  pureDimensionCondition : Prop

structure SimplicialComplexDimensionEvidence (P : SimplicialComplexDimensionPackage) where
  dimensionFunctionClosed : P.dimensionFunction = (List.foldr max 0 (List.map (λ s => s.length - 1) P.simplexSet))
  finiteTypeConditionClosed : P.finiteTypeCondition
  pureDimensionConditionClosed : P.pureDimensionCondition

def SimplicialComplexDimensionClosed (P : SimplicialComplexDimensionPackage) : Prop :=
  P.dimensionFunction = (List.foldr max 0 (List.map (λ s => s.length - 1) P.simplexSet)) ∧
  P.finiteTypeCondition ∧
  P.pureDimensionCondition

theorem simplicial_complex_dimension_closed_from_evidence
  (P : SimplicialComplexDimensionPackage) (E : SimplicialComplexDimensionEvidence P) :
  SimplicialComplexDimensionClosed P := by
  exact And.intro E.dimensionFunctionClosed (And.intro E.finiteTypeConditionClosed E.pureDimensionConditionClosed)

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse
