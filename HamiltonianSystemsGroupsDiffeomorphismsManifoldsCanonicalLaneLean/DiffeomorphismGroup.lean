import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure DiffeomorphismGroupPackage where
  manifold : Type u
  diffeomorphismGroup : Type v
  smoothStructurePreserved : Prop
  compositionClosed : Prop
  inverseExists : Prop

structure DiffeomorphismGroupEvidence (D : DiffeomorphismGroupPackage) where
  smoothStructurePreservedClosed : D.smoothStructurePreserved
  compositionClosedClosed : D.compositionClosed
  inverseExistsClosed : D.inverseExists

def DiffeomorphismGroupClosed (D : DiffeomorphismGroupPackage) : Prop :=
  D.smoothStructurePreserved ∧ D.compositionClosed ∧ D.inverseExists

theorem diffeomorphism_group_closed_from_evidence (D : DiffeomorphismGroupPackage)
    (E : DiffeomorphismGroupEvidence D) : DiffeomorphismGroupClosed D := by
  exact And.intro E.smoothStructurePreservedClosed
    (And.intro E.compositionClosedClosed E.inverseExistsClosed)

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse