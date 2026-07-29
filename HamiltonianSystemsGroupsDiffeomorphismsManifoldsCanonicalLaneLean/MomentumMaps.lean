import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure MomentumMapPackage where
  symplecticManifold : Type u
  lieGroup : Type u
  lieAlgebra : Type u
  momentumMap : lieAlgebra → symplecticManifold → ℝ
  equivarianceProperty : Prop
  hamiltonianActionProperty : Prop
  equivariancePropertyTerm : equivarianceProperty
  hamiltonianActionPropertyTerm : hamiltonianActionProperty

structure MomentumMapEvidence (M : MomentumMapPackage) where
  equivariancePropertyClosed : M.equivarianceProperty
  hamiltonianActionPropertyClosed : M.hamiltonianActionProperty

def MomentumMapClosed (M : MomentumMapPackage) : Prop :=
  M.equivarianceProperty ∧ M.hamiltonianActionProperty

theorem momentum_map_closed_from_evidence (M : MomentumMapPackage)
    (E : MomentumMapEvidence M) : MomentumMapClosed M := by
  exact And.intro E.equivariancePropertyClosed E.hamiltonianActionPropertyClosed

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse