import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure IntegrableSystemPackage where
  poissonManifold : Type u
  hamiltonian : poissonManifold → ℝ
  firstIntegrals : Set (poissonManifold → ℝ)
  involutiveProperty : Prop
  independentProperty : Prop
  integrableProperty : Prop
  involutivePropertyTerm : involutiveProperty
  independentPropertyTerm : independentProperty
  integrablePropertyTerm : integrableProperty

structure IntegrableSystemEvidence (I : IntegrableSystemPackage) where
  involutivePropertyClosed : I.involutiveProperty
  independentPropertyClosed : I.independentProperty
  integrablePropertyClosed : I.integrableProperty

def IntegrableSystemClosed (I : IntegrableSystemPackage) : Prop :=
  I.involutiveProperty ∧ I.independentProperty ∧ I.integrableProperty

theorem integrable_system_closed_from_evidence (I : IntegrableSystemPackage)
    (E : IntegrableSystemEvidence I) : IntegrableSystemClosed I := by
  exact And.intro E.involutivePropertyClosed
    (And.intro E.independentPropertyClosed E.integrablePropertyClosed)

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse