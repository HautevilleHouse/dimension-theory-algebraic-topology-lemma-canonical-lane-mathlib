import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure SimplicialComplex where
  vertices : Type u
  simplices : List (List vertices)
  faceClosure : ∀ (s : List vertices), s ∈ simplices → (∀ (t : List vertices), t ⊆ s → t ∈ simplices)
  finiteType : Finset (List vertices)

structure SimplicialComplexEvidence (K : SimplicialComplex) where
  faceClosureClosed : ∀ (s : List K.vertices), s ∈ K.simplices → (∀ (t : List K.vertices), t ⊆ s → t ∈ K.simplices)
  finiteTypeClosed : Finset (List K.vertices) = K.finiteType

def SimplicialComplexClosed (K : SimplicialComplex) : Prop :=
  (∀ (s : List K.vertices), s ∈ K.simplices → (∀ (t : List K.vertices), t ⊆ s → t ∈ K.simplices)) ∧
  (Finset (List K.vertices) = K.finiteType)

theorem simplicial_complex_closed_from_evidence (K : SimplicialComplex) (E : SimplicialComplexEvidence K) :
    SimplicialComplexClosed K := by
  exact And.intro E.faceClosureClosed E.finiteTypeClosed

end HautevilleHouse
end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean