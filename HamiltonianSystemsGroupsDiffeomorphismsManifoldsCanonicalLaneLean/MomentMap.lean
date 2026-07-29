import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure MomentMap (M : Type u) [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] (G : PhaseFlowDiffeomorphismGroup M) where
  lieAlgebra : Type v
  momentMap : M → lieAlgebra
  equivariance : Prop
  hamiltonianAction : Prop
  momentMapDefined : momentMap
  equivarianceClosed : equivariance
  hamiltonianActionClosed : hamiltonianAction

structure MomentMapEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] {G : PhaseFlowDiffeomorphismGroup M} (Mom : MomentMap M G) where
  equivarianceClosed : Mom.equivariance
  hamiltonianActionClosed : Mom.hamiltonianAction

def MomentMapClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] {G : PhaseFlowDiffeomorphismGroup M} (Mom : MomentMap M G) : Prop :=
  Mom.equivariance ∧ Mom.hamiltonianAction

theorem moment_map_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] {G : PhaseFlowDiffeomorphismGroup M}
    (Mom : MomentMap M G) (E : MomentMapEvidence Mom) : MomentMapClosed Mom := by
  exact And.intro E.equivarianceClosed E.hamiltonianActionClosed

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse