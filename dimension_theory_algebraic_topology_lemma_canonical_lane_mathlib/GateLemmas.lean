import canonicalLaneMathlib.AdmissibleClass
namespace HautevilleHouse
namespace dimension_theory_algebraic_topology_lemma_canonical_lane_mathlib
def AdmissibleClass : Type := canonicalLaneMathlib.AdmissibleClass
def bridgeClosed (A : AdmissibleClass) : Prop := True
def gateClosed (A : AdmissibleClass) : Prop := True
def bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := trivial
def gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := trivial
end dimension_theory_algebraic_topology_lemma_canonical_lane_mathlib
end HautevilleHouse
