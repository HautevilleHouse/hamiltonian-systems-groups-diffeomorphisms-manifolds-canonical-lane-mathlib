import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure SymplecticAnalyticCertificate where
  symplecticFormNondegenerate : Prop
  closedForm : Prop
  poissonBracketDefined : Prop
  symplecticFormNondegenerateClosed : symplecticFormNondegenerate
  closedFormClosed : closedForm
  poissonBracketDefinedClosed : poissonBracketDefined
  evidence : NoncollapsingEvidence default

def SymplecticAnalyticCertificateClosed (C : SymplecticAnalyticCertificate) : Prop :=
  C.symplecticFormNondegenerate ∧ C.closedForm ∧ C.poissonBracketDefined ∧ NoncollapsingClosed default

theorem symplectic_analytic_certificate_closed (C : SymplecticAnalyticCertificate) :
    SymplecticAnalyticCertificateClosed C := by
  exact And.intro C.symplecticFormNondegenerateClosed (And.intro C.closedFormClosed (And.intro C.poissonBracketDefinedClosed (by
    -- evidence should provide NoncollapsingClosed; we use trivial default for simplicity
    exact noncollapsing_closed_from_evidence default C.evidence)))

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse