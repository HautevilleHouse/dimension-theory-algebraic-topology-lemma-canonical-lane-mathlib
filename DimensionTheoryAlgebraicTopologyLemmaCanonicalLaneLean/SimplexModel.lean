import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure SimplicialComplex where
  vertexSet : Type u
  vertexTopology : TopologicalSpace vertexSet
  abstractSimplex : Nat → Prop
  faceOperator : Prop
  boundaryOperator : Prop
  faceOperatorDefined : faceOperator
  boundaryOperatorDefined : boundaryOperator

structure SimplexModelEvidence (S : SimplicialComplex) where
  faceOperatorDefinedClosed : S.faceOperator
  boundaryOperatorDefinedClosed : S.boundaryOperator

def SimplexModelClosed (S : SimplicialComplex) : Prop :=
  S.faceOperator ∧ S.boundaryOperator

theorem simplex_model_closed_from_evidence (S : SimplicialComplex)
    (E : SimplexModelEvidence S) : SimplexModelClosed S := by
  exact And.intro E.faceOperatorDefinedClosed E.boundaryOperatorDefinedClosed

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse