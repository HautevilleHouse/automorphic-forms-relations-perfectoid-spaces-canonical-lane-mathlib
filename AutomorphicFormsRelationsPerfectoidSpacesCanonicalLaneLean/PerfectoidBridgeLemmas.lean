import AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.PerfectoidAdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PerfectoidWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse