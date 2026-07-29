import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

def ConstrainedHamiltonianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hamiltonian_endgame (A : AdmissibleClass) :
    ConstrainedHamiltonianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse