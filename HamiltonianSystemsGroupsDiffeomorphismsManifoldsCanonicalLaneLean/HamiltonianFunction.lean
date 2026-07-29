import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean

structure HamiltonianFunction (M : Type u) [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] where
  hamiltonian : M → ℝ
  smoothness : Smooth M ℝ hamiltonian
  hamiltonianVectorField : VectorField M
  vectorFieldDefined : Prop
  hamiltonianVectorFieldDefined : hamiltonianVectorField
  flowPreservesSymplecticForm : Prop
  conservationOfEnergy : Prop
  smoothnessClosed : smoothness
  vectorFieldDefinedClosed : vectorFieldDefined
  hamiltonianVectorFieldDefinedClosed : hamiltonianVectorFieldDefined
  flowPreservesSymplecticFormClosed : flowPreservesSymplecticForm
  conservationOfEnergyClosed : conservationOfEnergy

structure HamiltonianFunctionEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] (H : HamiltonianFunction M) where
  smoothnessClosed : H.smoothness
  vectorFieldDefinedClosed : H.vectorFieldDefined
  hamiltonianVectorFieldDefinedClosed : H.hamiltonianVectorFieldDefined
  flowPreservesSymplecticFormClosed : H.flowPreservesSymplecticForm
  conservationOfEnergyClosed : H.conservationOfEnergy

def HamiltonianFunctionClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] (H : HamiltonianFunction M) : Prop :=
  H.smoothness ∧ H.vectorFieldDefined ∧ H.hamiltonianVectorFieldDefined ∧ H.flowPreservesSymplecticForm ∧ H.conservationOfEnergy

theorem hamiltonian_function_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M] [SymplecticStructure M] (H : HamiltonianFunction M)
    (E : HamiltonianFunctionEvidence H) : HamiltonianFunctionClosed H := by
  exact And.intro E.smoothnessClosed
    (And.intro E.vectorFieldDefinedClosed
      (And.intro E.hamiltonianVectorFieldDefinedClosed
        (And.intro E.flowPreservesSymplecticFormClosed E.conservationOfEnergyClosed)))

end HamiltonianSystemsGroupsDiffeomorphismsManifoldsCanonicalLaneLean
end HautevilleHouse