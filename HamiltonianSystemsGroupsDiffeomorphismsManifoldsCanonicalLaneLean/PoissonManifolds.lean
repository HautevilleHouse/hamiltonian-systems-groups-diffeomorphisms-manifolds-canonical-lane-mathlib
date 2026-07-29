import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure PoissonManifoldPackage where
  manifold : Type u
  top : TopologicalSpace manifold
  smooth : Prop
  poissonBracket : (manifold → ℝ) → (manifold → ℝ) → manifold → ℝ
  antisymmetry : Prop
  jacobiIdentity : Prop
  leibnizRule : Prop
  smoothTerm : smooth
  antisymmetryTerm : antisymmetry
  jacobiIdentityTerm : jacobiIdentity
  leibnizRuleTerm : leibnizRule

structure PoissonManifoldEvidence (P : PoissonManifoldPackage) where
  smoothClosed : P.smooth
  antisymmetryClosed : P.antisymmetry
  jacobiIdentityClosed : P.jacobiIdentity
  leibnizRuleClosed : P.leibnizRule

def PoissonManifoldClosed (P : PoissonManifoldPackage) : Prop :=
  P.smooth ∧ P.antisymmetry ∧ P.jacobiIdentity ∧ P.leibnizRule

theorem poisson_manifold_closed_from_evidence (P : PoissonManifoldPackage)
    (E : PoissonManifoldEvidence P) : PoissonManifoldClosed P := by
  exact And.intro E.smoothClosed (And.intro E.antisymmetryClosed
    (And.intro E.jacobiIdentityClosed E.leibnizRuleClosed))

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse