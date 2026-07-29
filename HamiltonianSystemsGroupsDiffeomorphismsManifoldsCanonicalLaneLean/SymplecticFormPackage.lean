import HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean.HamiltonianSystemsAdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure SymplecticFormPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  symplecticTwoForm : Type w
  closedNondegenerate : Prop
  closedNondegenerateTerm : closedNondegenerate

structure SymplecticFormEvidence (S : SymplecticFormPackage) where
  closedNondegenerateClosed : S.closedNondegenerate

def SymplecticFormClosed (S : SymplecticFormPackage) : Prop :=
  S.closedNondegenerate

theorem symplectic_form_closed_from_evidence (S : SymplecticFormPackage) (E : SymplecticFormEvidence S) :
    SymplecticFormClosed S := by
  exact E.closedNondegenerateClosed

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse
