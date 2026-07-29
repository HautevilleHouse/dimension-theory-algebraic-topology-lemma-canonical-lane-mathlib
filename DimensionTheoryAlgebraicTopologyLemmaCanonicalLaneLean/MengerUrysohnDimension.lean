import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure MengerUrysohnDimensionPackage where
  spaceType : Type u
  topology : TopologicalSpace spaceType
  dimension : ℕ
  baseCaseEmpty : Prop
  inductiveStep : (closedSet : TopologicalSpace.Closeds spaceType) → Prop

structure MengerUrysohnDimensionEvidence (P : MengerUrysohnDimensionPackage) where
  baseCaseEmptyClosed : P.baseCaseEmpty
  inductiveStepClosed : ∀ (closedSet : TopologicalSpace.Closeds P.spaceType), P.inductiveStep closedSet
  dimensionClosed : P.dimension = 0

def MengerUrysohnDimensionClosed (P : MengerUrysohnDimensionPackage) : Prop :=
  P.baseCaseEmpty ∧
  (∀ (closedSet : TopologicalSpace.Closeds P.spaceType), P.inductiveStep closedSet) ∧
  P.dimension = 0

theorem menger_urysohn_dimension_closed_from_evidence
  (P : MengerUrysohnDimensionPackage) (E : MengerUrysohnDimensionEvidence P) :
  MengerUrysohnDimensionClosed P := by
  exact And.intro E.baseCaseEmptyClosed (And.intro E.inductiveStepClosed E.dimensionClosed)

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse
