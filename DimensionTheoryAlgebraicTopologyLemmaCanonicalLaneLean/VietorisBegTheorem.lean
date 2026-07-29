import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean.CoveringDimension
import HautevilleHouse.DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean.CechComplex

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure VietorisBegTheoremPackage {D : CoveringDimensionPackage} {C : CechComplexPackage} where
  fineCoverRefinement : Prop
  cechComplexQuasiIsomorphism : Prop
  homologyIsomorphism : Prop
  spectralSequenceDegeneration : Prop

structure VietorisBegTheoremEvidence {D : CoveringDimensionPackage} {C : CechComplexPackage} (V : VietorisBegTheoremPackage D C) where
  fineCoverRefinementClosed : V.fineCoverRefinement
  cechComplexQuasiIsomorphismClosed : V.cechComplexQuasiIsomorphism
  homologyIsomorphismClosed : V.homologyIsomorphism
  spectralSequenceDegenerationClosed : V.spectralSequenceDegeneration

def VietorisBegTheoremClosed {D : CoveringDimensionPackage} {C : CechComplexPackage} (V : VietorisBegTheoremPackage D C) : Prop :=
  V.fineCoverRefinement ∧ V.cechComplexQuasiIsomorphism ∧ V.homologyIsomorphism ∧ V.spectralSequenceDegeneration

theorem vietoris_beg_theorem_closed_from_evidence {D : CoveringDimensionPackage} {C : CechComplexPackage} (V : VietorisBegTheoremPackage D C) (E : VietorisBegTheoremEvidence V) :
    VietorisBegTheoremClosed V := by
  exact And.intro E.fineCoverRefinementClosed (And.intro E.cechComplexQuasiIsomorphismClosed (And.intro E.homologyIsomorphismClosed E.spectralSequenceDegenerationClosed))

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse
