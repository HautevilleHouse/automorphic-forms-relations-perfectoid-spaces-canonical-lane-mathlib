import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.PerfectoidSpace
import HautevilleHouse.AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.AutomorphicForm

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure AdmittedPerfectoidObject where
  perfectoid : PerfectoidSpace
  perfectoidEvidence : PerfectoidSpaceEvidence perfectoid
  automorphic : AutomorphicForm
  automorphicEvidence : AutomorphicFormEvidence automorphic

structure AdmissibleClass where
  object : AdmittedPerfectoidObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (PerfectoidSpaceClosed A.object.perfectoid ∧ AutomorphicFormClosed A.object.automorphic) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse