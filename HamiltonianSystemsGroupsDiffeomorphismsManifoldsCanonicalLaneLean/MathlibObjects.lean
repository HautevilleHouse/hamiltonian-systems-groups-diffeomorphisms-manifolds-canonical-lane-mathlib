import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HamiltonianSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  symplecticForm : carrier → carrier → ℝ
  closedness : ∀ x y z, symplecticForm x y + symplecticForm y z = symplecticForm x z

structure HamiltonianAdmittedObject where
  space : HamiltonianSpace
  hamiltonianFunction : space.carrier → ℝ
  vectorField : (x : space.carrier) → TangentSpace x
  flowExists : Prop
  conclusion : flowExists

structure HamiltonianEndgameState where
  object : HamiltonianAdmittedObject

def HamiltonianWitnessClosed (O : HamiltonianAdmittedObject) : Prop :=
  O.flowExists

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse