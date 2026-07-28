import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.PerfectoidSpace
import HautevilleHouse.AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.AutomorphicForm

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PerfectoidSpaceClosed A.object.perfectoid ∧ AutomorphicFormClosed A.object.automorphic

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  refine And.intro ?_ ?_
  · exact perfectoid_space_closed_from_evidence A.object.perfectoid A.object.perfectoidEvidence
  · exact automorphic_form_closed_from_evidence A.object.automorphic A.object.automorphicEvidence

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse