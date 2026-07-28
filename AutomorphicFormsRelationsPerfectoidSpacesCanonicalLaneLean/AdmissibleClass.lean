import AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure AutomorphicFormsPerfectoidSpacesAdmittedObject where
  perfectoidSpace : Type u
  automorphicForm : Type v
  correspondenceEstablished : Prop
  conclusion : correspondenceEstablished

structure AdmissibleClass where
  object : AutomorphicFormsPerfectoidSpacesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.correspondenceEstablished) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse