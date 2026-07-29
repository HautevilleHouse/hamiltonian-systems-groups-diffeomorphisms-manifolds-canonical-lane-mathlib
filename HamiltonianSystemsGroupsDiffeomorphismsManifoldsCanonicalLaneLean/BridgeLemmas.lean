import HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HamiltonianWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse
