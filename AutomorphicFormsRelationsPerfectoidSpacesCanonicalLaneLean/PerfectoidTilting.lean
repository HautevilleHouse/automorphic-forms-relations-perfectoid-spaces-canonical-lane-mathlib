import AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.PerfectoidAdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure TiltingPackage (A : AutomorphicAdmissibleClass) where
  perfectoidField : Type u
  tiltConstruction : perfectoidField
  tiltEquivalence : Prop
  perfectoidTiltingCorrespondence : Prop
  untiltMap : Prop
  tiltClosed : Prop
  tiltClosedTerm : tiltClosed

structure TiltingEvidence (A : AutomorphicAdmissibleClass) (T : TiltingPackage A) where
  tiltEquivalenceClosed : T.tiltEquivalence
  perfectoidTiltingCorrespondenceClosed : T.perfectoidTiltingCorrespondence
  untiltMapClosed : T.untiltMap

def TiltingClosed (A : AutomorphicAdmissibleClass) (T : TiltingPackage A) : Prop :=
  T.tiltEquivalence ∧ T.perfectoidTiltingCorrespondence ∧ T.untiltMap

theorem tilting_closed_from_evidence (A : AutomorphicAdmissibleClass) (T : TiltingPackage A)
    (E : TiltingEvidence A T) : TiltingClosed A T := by
  exact And.intro E.tiltEquivalenceClosed
    (And.intro E.perfectoidTiltingCorrespondenceClosed E.untiltMapClosed)

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse