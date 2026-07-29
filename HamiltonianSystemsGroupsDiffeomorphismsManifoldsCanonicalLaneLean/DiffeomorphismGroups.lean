import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure DiffeomorphismGroupPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  diffeomorphismGroup : Type u
  identityElement : diffeomorphismGroup
  compositionOperation : diffeomorphismGroup → diffeomorphismGroup → diffeomorphismGroup
  inverseOperation : diffeomorphismGroup → diffeomorphismGroup
  smoothStructureTerm : smoothStructure
  groupAxioms : Prop
  groupAxiomsTerm : groupAxioms

structure DiffeomorphismGroupEvidence (G : DiffeomorphismGroupPackage) where
  smoothStructureClosed : G.smoothStructure
  groupAxiomsClosed : G.groupAxioms

def DiffeomorphismGroupClosed (G : DiffeomorphismGroupPackage) : Prop :=
  G.smoothStructure ∧ G.groupAxioms

theorem diffeomorphism_group_closed_from_evidence (G : DiffeomorphismGroupPackage)
    (E : DiffeomorphismGroupEvidence G) : DiffeomorphismGroupClosed G := by
  exact And.intro E.smoothStructureClosed E.groupAxiomsClosed

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse