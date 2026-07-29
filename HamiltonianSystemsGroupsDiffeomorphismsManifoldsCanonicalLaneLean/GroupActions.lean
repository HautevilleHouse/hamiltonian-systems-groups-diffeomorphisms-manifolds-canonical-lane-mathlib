import HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean.HamiltonianFlow
import Mathlib.GroupTheory.GroupAction.Basic

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure GroupActionPackage (G : Type u) [Group G] (M : Type v) [TopologicalSpace M] where
  action : G → M → M
  continuity : Prop
  smoothness : Prop

structure GroupActionEvidence {G : Type u} [Group G] {M : Type v} [TopologicalSpace M]
    (A : GroupActionPackage G M) where
  continuityClosed : A.continuity
  smoothnessClosed : A.smoothness

def GroupActionClosed {G : Type u} [Group G] {M : Type v} [TopologicalSpace M]
    (A : GroupActionPackage G M) : Prop :=
  A.continuity ∧ A.smoothness

theorem group_action_closed_from_evidence
    {G : Type u} [Group G] {M : Type v} [TopologicalSpace M]
    (A : GroupActionPackage G M) (E : GroupActionEvidence A) :
    GroupActionClosed A := by
  exact And.intro E.continuityClosed E.smoothnessClosed

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse
