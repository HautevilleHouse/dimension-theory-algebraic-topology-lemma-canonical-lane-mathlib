import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure DimensionFunction (X : Type u) where
  dim : X → ℕ
  monotonic : ∀ (A B : Set X), A ⊆ B → dim A ≤ dim B
  invarianceUnderHomeo : Prop

structure DimensionFunctionEvidence (X : Type u) (D : DimensionFunction X) where
  monotonicClosed : ∀ (A B : Set X), A ⊆ B → D.dim A ≤ D.dim B
  invarianceUnderHomeoClosed : D.invarianceUnderHomeo

def DimensionFunctionClosed (X : Type u) (D : DimensionFunction X) : Prop :=
  (∀ (A B : Set X), A ⊆ B → D.dim A ≤ D.dim B) ∧ D.invarianceUnderHomeo

theorem dimension_function_closed_from_evidence (X : Type u) (D : DimensionFunction X) (E : DimensionFunctionEvidence X D) :
    DimensionFunctionClosed X D := by
  exact And.intro E.monotonicClosed E.invarianceUnderHomeoClosed

end HautevilleHouse
end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean