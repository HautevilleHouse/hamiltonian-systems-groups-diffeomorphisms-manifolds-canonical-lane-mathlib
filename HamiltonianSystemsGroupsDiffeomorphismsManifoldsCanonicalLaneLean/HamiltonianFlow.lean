import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure HamiltonianFlowPackage where
  phaseSpace : Type u
  symplecticForm : Type v
  hamiltonian : Type w
  flowLines : Prop
  preservationOfSymplectic : Prop
  hamiltonianConservation : Prop

structure HamiltonianFlowEvidence (H : HamiltonianFlowPackage) where
  flowLinesClosed : H.flowLines
  preservationOfSymplecticClosed : H.preservationOfSymplectic
  hamiltonianConservationClosed : H.hamiltonianConservation

def HamiltonianFlowClosed (H : HamiltonianFlowPackage) : Prop :=
  H.flowLines ∧ H.preservationOfSymplectic ∧ H.hamiltonianConservation

theorem hamiltonian_flow_closed_from_evidence (H : HamiltonianFlowPackage)
    (E : HamiltonianFlowEvidence H) : HamiltonianFlowClosed H := by
  exact And.intro E.flowLinesClosed
    (And.intro E.preservationOfSymplecticClosed E.hamiltonianConservationClosed)

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse