import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean.SimplicialComplex

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure NerveRealization {K : SimplicialComplex} where
  nerve : Type u
  geometricRealization : TopologicalSpace nerve
  barycentricCoordinates : nerve → K.simplices
  homeomorphism : Type v

structure NerveRealizationEvidence {K : SimplicialComplex} (N : NerveRealization K) where
  barycentricCoordinatesClosed : N.barycentricCoordinates = (λ x => [])
  homeomorphismClosed : N.homeomorphism = (λ x => x)

def NerveRealizationClosed {K : SimplicialComplex} (N : NerveRealization K) : Prop :=
  N.barycentricCoordinates = (λ x => []) ∧ N.homeomorphism = (λ x => x)

theorem nerve_realization_closed_from_evidence {K : SimplicialComplex} (N : NerveRealization K) (E : NerveRealizationEvidence N) :
    NerveRealizationClosed N := by
  exact And.intro E.barycentricCoordinatesClosed E.homeomorphismClosed

end HautevilleHouse
end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean