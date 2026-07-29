import HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean.HamiltonianVectorField

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure LieGroupPackage where
  group : Type u
  groupMultiplication : group → group → group
  smoothStructure : Type v
  groupAction : group → (S : SymplecticFormPackage) → S.manifold → S.manifold
  momentumMap : Type w
  hamiltonianAction : Prop
  hamiltonianActionTerm : hamiltonianAction

structure LieGroupActionEvidence {S : SymplecticFormPackage}
    (G : LieGroupPackage) (HV : HamiltonianVectorFieldPackage S) where
  hamiltonianActionClosed : G.hamiltonianAction

def LieGroupActionClosed {S : SymplecticFormPackage}
    (G : LieGroupPackage) (HV : HamiltonianVectorFieldPackage S) : Prop :=
  G.hamiltonianAction

theorem lie_group_action_closed_from_evidence
    {S : SymplecticFormPackage} (G : LieGroupPackage) (HV : HamiltonianVectorFieldPackage S)
    (E : LieGroupActionEvidence G HV) : LieGroupActionClosed G HV := by
  exact E.hamiltonianActionClosed

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse
