import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure WeakHomotopyEquivalence (X Y : Type u) where
  map : X → Y
  inducesIsomorphismsOnHomotopyGroups : Prop
  continuous : Prop

structure WeakHomotopyEquivalenceEvidence (X Y : Type u) (W : WeakHomotopyEquivalence X Y) where
  inducesIsomorphismsOnHomotopyGroupsClosed : W.inducesIsomorphismsOnHomotopyGroups
  continuousClosed : W.continuous

def WeakHomotopyEquivalenceClosed (X Y : Type u) (W : WeakHomotopyEquivalence X Y) : Prop :=
  W.inducesIsomorphismsOnHomotopyGroups ∧ W.continuous

theorem weak_homotopy_equivalence_closed_from_evidence (X Y : Type u) (W : WeakHomotopyEquivalence X Y) (E : WeakHomotopyEquivalenceEvidence X Y W) :
    WeakHomotopyEquivalenceClosed X Y W := by
  exact And.intro E.inducesIsomorphismsOnHomotopyGroupsClosed E.continuousClosed

end HautevilleHouse
end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean