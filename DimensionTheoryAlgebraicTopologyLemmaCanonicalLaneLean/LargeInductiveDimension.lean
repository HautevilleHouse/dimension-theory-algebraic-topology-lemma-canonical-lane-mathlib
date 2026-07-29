import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure LargeInductiveDimensionPackage where
  spaceType : Type u
  topology : TopologicalSpace spaceType
  dimension : ℕ
  baseCaseEmpty : Prop
  inductiveStep : (openSet : TopologicalSpace.Opens spaceType) → Prop

structure LargeInductiveDimensionEvidence (P : LargeInductiveDimensionPackage) where
  baseCaseEmptyClosed : P.baseCaseEmpty
  inductiveStepClosed : ∀ (openSet : TopologicalSpace.Opens P.spaceType), P.inductiveStep openSet
  dimensionClosed : P.dimension = 0

def LargeInductiveDimensionClosed (P : LargeInductiveDimensionPackage) : Prop :=
  P.baseCaseEmpty ∧
  (∀ (openSet : TopologicalSpace.Opens P.spaceType), P.inductiveStep openSet) ∧
  P.dimension = 0

theorem large_inductive_dimension_closed_from_evidence
  (P : LargeInductiveDimensionPackage) (E : LargeInductiveDimensionEvidence P) :
  LargeInductiveDimensionClosed P := by
  exact And.intro E.baseCaseEmptyClosed (And.intro E.inductiveStepClosed E.dimensionClosed)

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse
