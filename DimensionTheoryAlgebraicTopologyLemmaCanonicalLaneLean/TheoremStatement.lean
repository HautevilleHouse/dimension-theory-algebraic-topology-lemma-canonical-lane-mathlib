import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean

structure DimensionTheoryAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  admitsUniversalProperty : Prop
  conclusion : admitsUniversalProperty

def DimensionTheoryWitnessClosed (O : DimensionTheoryAdmittedObject) : Prop :=
  O.admitsUniversalProperty

end DimensionTheoryAlgebraicTopologyLemmaCanonicalLaneLean
end HautevilleHouse
