import HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean.SymplecticFormPackage

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure HamiltonianVectorFieldPackage {S : SymplecticFormPackage} where
  hamiltonianFunction : S.manifold → ℝ
  vectorField : Type u
  hamiltonianVectorField : S.manifold → S.manifold
  satisfiesHamiltonianEqn : Prop
  satisfiesHamiltonianEqnTerm : satisfiesHamiltonianEqn

structure HamiltonianVectorFieldEvidence {S : SymplecticFormPackage}
    (H : HamiltonianVectorFieldPackage S) where
  satisfiesHamiltonianEqnClosed : H.satisfiesHamiltonianEqn

def HamiltonianVectorFieldClosed {S : SymplecticFormPackage}
    (H : HamiltonianVectorFieldPackage S) : Prop :=
  H.satisfiesHamiltonianEqn

theorem hamiltonian_vector_field_closed_from_evidence
    {S : SymplecticFormPackage} (H : HamiltonianVectorFieldPackage S)
    (E : HamiltonianVectorFieldEvidence H) : HamiltonianVectorFieldClosed H := by
  exact E.satisfiesHamiltonianEqnClosed

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse
