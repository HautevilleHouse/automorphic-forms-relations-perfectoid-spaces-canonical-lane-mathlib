import AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

def ConstrainedAutomorphicFormsPerfectoidSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_automorphic_forms_perfectoid_spaces_endgame (A : AdmissibleClass) :
    ConstrainedAutomorphicFormsPerfectoidSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse