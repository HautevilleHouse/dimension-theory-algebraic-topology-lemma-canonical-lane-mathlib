import canonicalLaneMathlib.AdmissibleClass
import DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean.CWComplexDimension
import DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean.CohomologyDimensionBridge

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

def ConstrainedDimensionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dimension_endgame (A : AdmissibleClass) :
    ConstrainedDimensionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse