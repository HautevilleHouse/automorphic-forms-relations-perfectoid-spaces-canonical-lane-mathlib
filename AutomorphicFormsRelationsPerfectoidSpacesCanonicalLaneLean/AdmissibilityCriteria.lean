import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.PerfectoidSpace
import HautevilleHouse.AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.AutomorphicForm

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure AdmissibilityCriteriaPackage where
  perfectoidSpaceCondition : Prop
  automorphicFormCondition : Prop
  coherenceCondition : Prop
  galoisCondition : Prop
  admissibilityClosed : Prop

structure AdmissibilityCriteriaEvidence (C : AdmissibilityCriteriaPackage) where
  perfectoidSpaceConditionClosed : C.perfectoidSpaceCondition
  automorphicFormConditionClosed : C.automorphicFormCondition
  coherenceConditionClosed : C.coherenceCondition
  galoisConditionClosed : C.galoisCondition
  admissibilityClosedClosed : C.admissibilityClosed

def AdmissibilityCriteriaClosed (C : AdmissibilityCriteriaPackage) : Prop :=
  C.perfectoidSpaceCondition ∧ C.automorphicFormCondition ∧ C.coherenceCondition ∧
  C.galoisCondition ∧ C.admissibilityClosed

theorem admissibility_criteria_closed_from_evidence (C : AdmissibilityCriteriaPackage) (E : AdmissibilityCriteriaEvidence C) :
    AdmissibilityCriteriaClosed C := by
  exact And.intro E.perfectoidSpaceConditionClosed
    (And.intro E.automorphicFormConditionClosed
      (And.intro E.coherenceConditionClosed
        (And.intro E.galoisConditionClosed E.admissibilityClosedClosed)))

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse