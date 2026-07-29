import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean.SimplexModel
import HautevilleHouse.DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean.CechCohomology
import HautevilleHouse.DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean.DimensionInvariant

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure CohomologyDimensionEquivalencePackage
    {S : SimplicialComplex} {C : CechCohomologyPackage S}
    (D : TopologicalSpaceDimension) where
  cohomologyToCoveringDim : Prop
  coveringDimToInductiveDim : Prop
  inductiveDimToCohomology : Prop
  equivalenceChain : cohomologyToCoveringDim ∧ coveringDimToInductiveDim ∧ inductiveDimToCohomology

structure CohomologyDimensionEquivalenceEvidence
    {S : SimplicialComplex} {C : CechCohomologyPackage S}
    {D : TopologicalSpaceDimension}
    (E : CohomologyDimensionEquivalencePackage D) where
  cohomologyToCoveringDimClosed : E.cohomologyToCoveringDim
  coveringDimToInductiveDimClosed : E.coveringDimToInductiveDim
  inductiveDimToCohomologyClosed : E.inductiveDimToCohomology

def CohomologyDimensionEquivalenceClosed
    {S : SimplicialComplex} {C : CechCohomologyPackage S}
    {D : TopologicalSpaceDimension}
    (E : CohomologyDimensionEquivalencePackage D) : Prop :=
  E.cohomologyToCoveringDim ∧ E.coveringDimToInductiveDim ∧ E.inductiveDimToCohomology

theorem cohomology_dimension_equivalence_closed_from_evidence
    {S : SimplicialComplex} {C : CechCohomologyPackage S}
    {D : TopologicalSpaceDimension}
    (Pkg : CohomologyDimensionEquivalencePackage D)
    (E : CohomologyDimensionEquivalenceEvidence Pkg) :
    CohomologyDimensionEquivalenceClosed Pkg := by
  exact And.intro E.cohomologyToCoveringDimClosed
    (And.intro E.coveringDimToInductiveDimClosed E.inductiveDimToCohomologyClosed)

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse