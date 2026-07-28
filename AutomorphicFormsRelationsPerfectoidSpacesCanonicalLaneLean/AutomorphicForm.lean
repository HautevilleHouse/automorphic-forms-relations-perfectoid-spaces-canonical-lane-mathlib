import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure AutomorphicForm where
  reductiveGroup : Type u
  congruenceSubgroup : Type v
  automorphicCondition : Prop
  cuspidality : Prop
  heckeEigenvalues : Prop

structure AutomorphicFormEvidence (A : AutomorphicForm) where
  automorphicConditionClosed : A.automorphicCondition
  cuspidalityClosed : A.cuspidality
  heckeEigenvaluesClosed : A.heckeEigenvalues

def AutomorphicFormClosed (A : AutomorphicForm) : Prop :=
  A.automorphicCondition ∧ A.cuspidality ∧ A.heckeEigenvalues

theorem automorphic_form_closed_from_evidence (A : AutomorphicForm) (E : AutomorphicFormEvidence A) :
    AutomorphicFormClosed A := by
  exact And.intro E.automorphicConditionClosed (And.intro E.cuspidalityClosed E.heckeEigenvaluesClosed)

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse