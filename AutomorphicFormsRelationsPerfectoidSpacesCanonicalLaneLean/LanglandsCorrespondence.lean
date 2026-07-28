import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.PerfectoidSpace
import HautevilleHouse.AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.AutomorphicForm

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure LanglandsCorrespondencePackage {P : PerfectoidSpacePackage} {F : AutomorphicFormPackage} where
  perfectoidSpace : P
  automorphicForm : F
  correspondenceDiagramCommutes : Prop
  galoisRepresentationAssociated : Prop
  heckeEigenvaluesMatch : Prop

structure LanglandsCorrespondenceEvidence {P : PerfectoidSpacePackage} {F : AutomorphicFormPackage}
    (L : LanglandsCorrespondencePackage P F) where
  correspondenceDiagramCommutesClosed : L.correspondenceDiagramCommutes
  galoisRepresentationAssociatedClosed : L.galoisRepresentationAssociated
  heckeEigenvaluesMatchClosed : L.heckeEigenvaluesMatch

def LanglandsCorrespondenceClosed {P : PerfectoidSpacePackage} {F : AutomorphicFormPackage}
    (L : LanglandsCorrespondencePackage P F) : Prop :=
  L.correspondenceDiagramCommutes ∧ L.galoisRepresentationAssociated ∧ L.heckeEigenvaluesMatch

theorem langlands_correspondence_closed_from_evidence {P : PerfectoidSpacePackage} {F : AutomorphicFormPackage}
    (L : LanglandsCorrespondencePackage P F) (E : LanglandsCorrespondenceEvidence L) :
    LanglandsCorrespondenceClosed L := by
  exact And.intro E.correspondenceDiagramCommutesClosed
    (And.intro E.galoisRepresentationAssociatedClosed E.heckeEigenvaluesMatchClosed)

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse