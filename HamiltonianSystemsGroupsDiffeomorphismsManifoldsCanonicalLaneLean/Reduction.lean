import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure ReductionPackage where
  symplecticManifold : Type u
  lieGroup : Type u
  momentumMap : lieGroup → symplecticManifold → ℝ
  reductionLevel : ℝ
  quotientManifold : Type u
  reducedSymplecticForm : Type v
  marsdenWeinsteinTheorem : Prop
  marsdenWeinsteinTheoremTerm : marsdenWeinsteinTheorem

structure ReductionEvidence (R : ReductionPackage) where
  marsdenWeinsteinTheoremClosed : R.marsdenWeinsteinTheorem

def ReductionClosed (R : ReductionPackage) : Prop :=
  R.marsdenWeinsteinTheorem

theorem reduction_closed_from_evidence (R : ReductionPackage)
    (E : ReductionEvidence R) : ReductionClosed R := by
  exact E.marsdenWeinsteinTheoremClosed

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse