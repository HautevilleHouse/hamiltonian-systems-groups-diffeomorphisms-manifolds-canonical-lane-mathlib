import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure PoissonBracketPackage where
  algebra : Type u
  bracket : Type v
  bilinearity : Prop
  anticommutativity : Prop
  jacobiIdentity : Prop
  derivationProperty : Prop

structure PoissonBracketEvidence (P : PoissonBracketPackage) where
  bilinearityClosed : P.bilinearity
  anticommutativityClosed : P.anticommutativity
  jacobiIdentityClosed : P.jacobiIdentity
  derivationPropertyClosed : P.derivationProperty

def PoissonBracketClosed (P : PoissonBracketPackage) : Prop :=
  P.bilinearity ∧ P.anticommutativity ∧ P.jacobiIdentity ∧ P.derivationProperty

theorem poisson_bracket_closed_from_evidence (P : PoissonBracketPackage)
    (E : PoissonBracketEvidence P) : PoissonBracketClosed P := by
  exact And.intro E.bilinearityClosed
    (And.intro E.anticommutativityClosed
      (And.intro E.jacobiIdentityClosed E.derivationPropertyClosed))

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse