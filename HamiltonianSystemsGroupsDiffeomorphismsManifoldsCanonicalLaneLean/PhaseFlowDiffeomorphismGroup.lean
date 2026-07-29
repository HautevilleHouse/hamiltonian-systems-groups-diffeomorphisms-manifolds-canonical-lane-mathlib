import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure PhaseFlowDiffeomorphismGroup (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  flowMap : ℝ × M → M
  groupOperation : M → M → M
  identityElement : M
  inverseElement : M → M
  smoothFlow : Smooth (ℝ × M) M flowMap
  groupLaws : (∀ x, groupOperation identityElement x = x) ∧ (∀ x, groupOperation (inverseElement x) x = identityElement) ∧ (∀ x y z, groupOperation (groupOperation x y) z = groupOperation x (groupOperation y z))
  diffeomorphismProperty : ∀ t : ℝ, Diffeomorphism M M (flowMap (t, ·))

structure PhaseFlowDiffeomorphismGroupEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M] (G : PhaseFlowDiffeomorphismGroup M) where
  groupLawsClosed : G.groupLaws
  smoothFlowClosed : G.smoothFlow
  diffeomorphismPropertyClosed : G.diffeomorphismProperty

def PhaseFlowDiffeomorphismGroupClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M] (G : PhaseFlowDiffeomorphismGroup M) : Prop :=
  G.groupLaws ∧ G.smoothFlow ∧ G.diffeomorphismProperty

theorem phase_flow_diffeomorphism_group_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M] (G : PhaseFlowDiffeomorphismGroup M)
    (E : PhaseFlowDiffeomorphismGroupEvidence G) : PhaseFlowDiffeomorphismGroupClosed G := by
  exact And.intro E.groupLawsClosed (And.intro E.smoothFlowClosed E.diffeomorphismPropertyClosed)

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse