import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean.CechComplex

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure LerayTheoremPackage {C : CechComplexPackage} where
  sheafCondition : Prop
  cechToDerivedFunctorIso : Prop
  coveringDimensionBound : Prop
  acyclicityResult : Prop

structure LerayTheoremEvidence {C : CechComplexPackage} (L : LerayTheoremPackage C) where
  sheafConditionClosed : L.sheafCondition
  cechToDerivedFunctorIsoClosed : L.cechToDerivedFunctorIso
  coveringDimensionBoundClosed : L.coveringDimensionBound
  acyclicityResultClosed : L.acyclicityResult

def LerayTheoremClosed {C : CechComplexPackage} (L : LerayTheoremPackage C) : Prop :=
  L.sheafCondition ∧ L.cechToDerivedFunctorIso ∧ L.coveringDimensionBound ∧ L.acyclicityResult

theorem leray_theorem_closed_from_evidence {C : CechComplexPackage} (L : LerayTheoremPackage C) (E : LerayTheoremEvidence L) :
    LerayTheoremClosed L := by
  exact And.intro E.sheafConditionClosed (And.intro E.cechToDerivedFunctorIsoClosed (And.intro E.coveringDimensionBoundClosed E.acyclicityResultClosed))

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse
