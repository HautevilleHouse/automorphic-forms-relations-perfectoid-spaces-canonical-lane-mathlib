import AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.PerfectoidMathlibObjects

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure PerfectoidSpacesPackage where
  perfectoidSpace : Type u
  topology : TopologicalSpace perfectoidSpace
  structureSheaf : Type v
  tilt : Type w
  untilt : Type x
  isPerfectoid : Prop
  tiltExists : Prop
  untiltCompatible : Prop
  farguesFontaineCurveExists : Prop

structure PerfectoidSpacesEvidence (P : PerfectoidSpacesPackage) where
  isPerfectoidClosed : P.isPerfectoid
  tiltExistsClosed : P.tiltExists
  untiltCompatibleClosed : P.untiltCompatible
  farguesFontaineCurveExistsClosed : P.farguesFontaineCurveExists

def PerfectoidSpacesClosed (P : PerfectoidSpacesPackage) : Prop :=
  P.isPerfectoid ∧ P.tiltExists ∧ P.untiltCompatible ∧ P.farguesFontaineCurveExists

theorem perfectoid_spaces_closed_from_evidence (P : PerfectoidSpacesPackage)
    (E : PerfectoidSpacesEvidence P) : PerfectoidSpacesClosed P := by
  exact And.intro E.isPerfectoidClosed
    (And.intro E.tiltExistsClosed
      (And.intro E.untiltCompatibleClosed E.farguesFontaineCurveExistsClosed))

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse