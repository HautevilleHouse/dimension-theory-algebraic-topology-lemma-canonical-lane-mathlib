import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure SpectralSequenceDimensionPackage where
  spectralSequence : Type u
  filtrationDegree : ℕ
  E2PageDimensionBound : Prop
  convergenceToHomology : Prop
  vanishingRegions : Prop

structure SpectralSequenceDimensionEvidence (S : SpectralSequenceDimensionPackage) where
  E2PageDimensionBoundClosed : S.E2PageDimensionBound
  convergenceToHomologyClosed : S.convergenceToHomology
  vanishingRegionsClosed : S.vanishingRegions

def SpectralSequenceDimensionClosed (S : SpectralSequenceDimensionPackage) : Prop :=
  S.E2PageDimensionBound ∧ S.convergenceToHomology ∧ S.vanishingRegions

theorem spectral_sequence_dimension_closed_from_evidence
    (S : SpectralSequenceDimensionPackage) (E : SpectralSequenceDimensionEvidence S) :
    SpectralSequenceDimensionClosed S :=
  And.intro E.E2PageDimensionBoundClosed
    (And.intro E.convergenceToHomologyClosed E.vanishingRegionsClosed)

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse