import HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean.DiffeomorphismGroup
import Mathlib.LinearAlgebra.Dual

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure MomentumMapPackage {M : Type u} [TopologicalSpace M] {G : Type v} [Group G]
    (A : GroupActionPackage G M) (S : SymplecticPackage M) where
  momentumMap : M → (LieAlgebra.ofG G) → ℝ
  equivariance : Prop
  hamiltonianGenerator : Prop

structure MomentumMapEvidence {M : Type u} [TopologicalSpace M] {G : Type v} [Group G]
    {A : GroupActionPackage G M} {S : SymplecticPackage M}
    (P : MomentumMapPackage A S) where
  equivarianceClosed : P.equivariance
  hamiltonianGeneratorClosed : P.hamiltonianGenerator

def MomentumMapClosed {M : Type u} [TopologicalSpace M] {G : Type v} [Group G]
    {A : GroupActionPackage G M} {S : SymplecticPackage M}
    (P : MomentumMapPackage A S) : Prop :=
  P.equivariance ∧ P.hamiltonianGenerator

theorem momentum_map_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {G : Type v} [Group G]
    {A : GroupActionPackage G M} {S : SymplecticPackage M}
    (P : MomentumMapPackage A S) (E : MomentumMapEvidence P) :
    MomentumMapClosed P := by
  exact And.intro E.equivarianceClosed E.hamiltonianGeneratorClosed

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse
