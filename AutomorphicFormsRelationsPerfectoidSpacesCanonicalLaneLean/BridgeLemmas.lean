import AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.correspondenceEstablished

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse