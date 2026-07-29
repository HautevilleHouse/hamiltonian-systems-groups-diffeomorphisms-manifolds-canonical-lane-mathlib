import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure NoncollapsingPackage where
  symplecticVolumeBound : Prop
  curvatureScaleControl : Prop
  energyLowerBound : Prop

structure NoncollapsingEvidence (N : NoncollapsingPackage) where
  symplecticVolumeBoundClosed : N.symplecticVolumeBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  energyLowerBoundClosed : N.energyLowerBound

def NoncollapsingClosed (N : NoncollapsingPackage) : Prop :=
  N.symplecticVolumeBound ∧ N.curvatureScaleControl ∧ N.energyLowerBound

theorem noncollapsing_closed_from_evidence (N : NoncollapsingPackage) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.symplecticVolumeBoundClosed (And.intro E.curvatureScaleControlClosed E.energyLowerBoundClosed)

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse