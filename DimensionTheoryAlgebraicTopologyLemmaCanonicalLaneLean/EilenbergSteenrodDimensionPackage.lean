import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure EilenbergSteenrodDimensionPackage where
  homologyTheory : Type u
  dimensionAxiom : ℕ → Prop
  wedgeAxiomDimension : ℕ → Prop
  excisionDimensionBound : Prop
  exactnessDimensionBound : Prop

structure EilenbergSteenrodDimensionEvidence (E : EilenbergSteenrodDimensionPackage) where
  dimensionAxiomClosed : ∀ n, E.dimensionAxiom n
  wedgeAxiomDimensionClosed : ∀ n, E.wedgeAxiomDimension n
  excisionDimensionBoundClosed : E.excisionDimensionBound
  exactnessDimensionBoundClosed : E.exactnessDimensionBound

def EilenbergSteenrodDimensionClosed (E : EilenbergSteenrodDimensionPackage) : Prop :=
  (∀ n, E.dimensionAxiom n) ∧ (∀ n, E.wedgeAxiomDimension n) ∧
  E.excisionDimensionBound ∧ E.exactnessDimensionBound

theorem eilenberg_steenrod_dimension_closed_from_evidence
    (E : EilenbergSteenrodDimensionPackage)
    (Ev : EilenbergSteenrodDimensionEvidence E) :
    EilenbergSteenrodDimensionClosed E :=
  And.intro Ev.dimensionAxiomClosed
    (And.intro Ev.wedgeAxiomDimensionClosed
      (And.intro Ev.excisionDimensionBoundClosed
        Ev.exactnessDimensionBoundClosed))

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse