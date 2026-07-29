import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure SingularHomology (X : Type u) where
  chainComplex : Type v
  homologyGroups : ℕ → Type w
  longExactSequence : Prop
  excisionProperty : Prop

structure SingularHomologyEvidence (X : Type u) (H : SingularHomology X) where
  longExactSequenceClosed : H.longExactSequence
  excisionPropertyClosed : H.excisionProperty

def SingularHomologyClosed (X : Type u) (H : SingularHomology X) : Prop :=
  H.longExactSequence ∧ H.excisionProperty

theorem singular_homology_closed_from_evidence (X : Type u) (H : SingularHomology X) (E : SingularHomologyEvidence X H) :
    SingularHomologyClosed X H := by
  exact And.intro E.longExactSequenceClosed E.excisionPropertyClosed

end HautevilleHouse
end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean