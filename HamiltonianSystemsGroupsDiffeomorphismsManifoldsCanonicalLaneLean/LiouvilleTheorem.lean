import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure LiouvilleTheoremPackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] (H : HamiltonianFunction M) where
  volumeFormPreserved : Prop
  phaseFlowPreservesVolume : Prop
  ergodicHypothesisInput : Prop
  volumeFormPreservedClosed : volumeFormPreserved
  phaseFlowPreservesVolumeClosed : phaseFlowPreservesVolume
  ergodicHypothesisInputClosed : ergodicHypothesisInput

structure LiouvilleTheoremEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] {H : HamiltonianFunction M} (L : LiouvilleTheoremPackage M H) where
  volumeFormPreservedClosed : L.volumeFormPreserved
  phaseFlowPreservesVolumeClosed : L.phaseFlowPreservesVolume
  ergodicHypothesisInputClosed : L.ergodicHypothesisInput

def LiouvilleTheoremClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] {H : HamiltonianFunction M} (L : LiouvilleTheoremPackage M H) : Prop :=
  L.volumeFormPreserved ∧ L.phaseFlowPreservesVolume ∧ L.ergodicHypothesisInput

theorem liouville_theorem_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] {H : HamiltonianFunction M}
    (L : LiouvilleTheoremPackage M H) (E : LiouvilleTheoremEvidence L) : LiouvilleTheoremClosed L := by
  exact And.intro E.volumeFormPreservedClosed (And.intro E.phaseFlowPreservesVolumeClosed E.ergodicHypothesisInputClosed)

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse