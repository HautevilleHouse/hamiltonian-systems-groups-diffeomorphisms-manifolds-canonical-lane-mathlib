import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure SymplecticStructure (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  symplecticForm : DifferentialForm 2 M
  closedForm : Prop
  nonDegenerate : Prop
  poissonBracket : (M → ℝ) → (M → ℝ) → (M → ℝ)
  poissonBracketDefined : Prop
  closedFormClosed : closedForm
  nonDegenerateClosed : nonDegenerate
  poissonBracketDefinedClosed : poissonBracketDefined

structure SymplecticStructureEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M] (S : SymplecticStructure M) where
  closedFormClosed : S.closedForm
  nonDegenerateClosed : S.nonDegenerate
  poissonBracketDefinedClosed : S.poissonBracketDefined

def SymplecticStructureClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M] (S : SymplecticStructure M) : Prop :=
  S.closedForm ∧ S.nonDegenerate ∧ S.poissonBracketDefined

theorem symplectic_structure_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M] (S : SymplecticStructure M)
    (E : SymplecticStructureEvidence S) : SymplecticStructureClosed S := by
  exact And.intro E.closedFormClosed (And.intro E.nonDegenerateClosed E.poissonBracketDefinedClosed)

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse