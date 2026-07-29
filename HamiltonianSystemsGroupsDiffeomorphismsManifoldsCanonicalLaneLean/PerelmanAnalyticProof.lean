import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure HamiltonJacobiCertificate where
  generatingFunction : Type
  solutionExists : Prop
  uniqueness: Prop
  solutionExistsClosed : solutionExists
  uniquenessClosed : uniqueness
  evidence : SymplecticAnalyticCertificate

def HamiltonJacobiCertificateClosed (C : HamiltonJacobiCertificate) : Prop :=
  C.solutionExists ∧ C.uniqueness ∧ SymplecticAnalyticCertificateClosed C.evidence

theorem hamilton_jacobi_certificate_closed (C : HamiltonJacobiCertificate) :
    HamiltonJacobiCertificateClosed C := by
  exact And.intro C.solutionExistsClosed (And.intro C.uniquenessClosed (symplectic_analytic_certificate_closed C.evidence))

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse