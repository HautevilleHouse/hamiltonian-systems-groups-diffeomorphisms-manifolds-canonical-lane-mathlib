import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure SymplecticGroupActionPackage where
  group : Type u
  manifold : Type u
  symplecticForm : Type v
  groupAction : Type u
  symplecticActionProperty : Prop
  momentMap : Type u
  equivarianceProperty : Prop
  symplecticActionPropertyTerm : symplecticActionProperty
  equivariancePropertyTerm : equivarianceProperty

structure SymplecticGroupActionEvidence {G : SymplecticGroupActionPackage}
    (A : G) where
  symplecticActionPropertyClosed : G.symplecticActionProperty
  equivariancePropertyClosed : G.equivarianceProperty

def SymplecticGroupActionClosed (G : SymplecticGroupActionPackage) : Prop :=
  G.symplecticActionProperty ∧ G.equivarianceProperty

theorem symplectic_group_action_closed_from_evidence
    (G : SymplecticGroupActionPackage) (E : SymplecticGroupActionEvidence G) :
    SymplecticGroupActionClosed G := by
  exact And.intro E.symplecticActionPropertyClosed E.equivariancePropertyClosed

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse