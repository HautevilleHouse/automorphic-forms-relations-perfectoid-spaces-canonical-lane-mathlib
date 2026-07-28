import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PerfectoidSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PerfectoidAdmittedObject where
  space : PerfectoidSpace
  perfectoidProperty : Prop
  tiltExists : Prop
  untiltCompatible : Prop
  farguesFontaineCurveExists : Prop
  conclusion : farguesFontaineCurveExists

structure PerfectoidEndgameState where
  object : PerfectoidAdmittedObject

def PerfectoidWitnessClosed (O : PerfectoidAdmittedObject) : Prop :=
  O.farguesFontaineCurveExists

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse