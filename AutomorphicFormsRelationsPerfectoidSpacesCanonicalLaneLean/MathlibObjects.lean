import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure AutomorphicFormsPerfectoidSpacesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AutomorphicFormsPerfectoidSpacesAdmittedObject where
  space : AutomorphicFormsPerfectoidSpacesSpace
  perfectoidSpaceProperty : Prop
  automorphicFormData : Prop
  langlandsCorrespondence : Prop
  conclusion : langlandsCorrespondence

structure AutomorphicFormsPerfectoidSpacesEndgameState where
  object : AutomorphicFormsPerfectoidSpacesAdmittedObject

def AutomorphicFormsPerfectoidSpacesWitnessClosed (O : AutomorphicFormsPerfectoidSpacesAdmittedObject) : Prop :=
  O.langlandsCorrespondence

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse