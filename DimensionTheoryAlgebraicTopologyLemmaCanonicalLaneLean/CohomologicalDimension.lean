import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure CohomologicalDimensionPackage where
  spaceType : Type u
  sheafCoefficients : Type v
  cohomologyGroups : Nat → Type w
  vanishingCondition : Prop
  dimension : Nat

structure CohomologicalDimensionEvidence (P : CohomologicalDimensionPackage) where
  vanishingConditionClosed : P.vanishingCondition
  dimensionClosed : P.dimension = Nat.find (λ n => ∀ m > n, P.cohomologyGroups m → False)

def CohomologicalDimensionClosed (P : CohomologicalDimensionPackage) : Prop :=
  P.vanishingCondition ∧
  P.dimension = Nat.find (λ n => ∀ m > n, P.cohomologyGroups m → False)

theorem cohomological_dimension_closed_from_evidence
  (P : CohomologicalDimensionPackage) (E : CohomologicalDimensionEvidence P) :
  CohomologicalDimensionClosed P := by
  exact And.intro E.vanishingConditionClosed E.dimensionClosed

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse
