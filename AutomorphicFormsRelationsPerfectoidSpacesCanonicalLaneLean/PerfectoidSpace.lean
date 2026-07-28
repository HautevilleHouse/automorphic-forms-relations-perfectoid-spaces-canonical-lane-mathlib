import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure PerfectoidSpace where
  baseField : Type u
  perfectoidRing : Type v
  tildeLimit : Prop
  untiledEquivalence : Prop
  mixedCharacteristic : Prop

structure PerfectoidSpaceEvidence (P : PerfectoidSpace) where
  tildeLimitClosed : P.tildeLimit
  untiledEquivalenceClosed : P.untiledEquivalence
  mixedCharacteristicClosed : P.mixedCharacteristic

def PerfectoidSpaceClosed (P : PerfectoidSpace) : Prop :=
  P.tildeLimit ∧ P.untiledEquivalence ∧ P.mixedCharacteristic

theorem perfectoid_space_closed_from_evidence (P : PerfectoidSpace) (E : PerfectoidSpaceEvidence P) :
    PerfectoidSpaceClosed P := by
  exact And.intro E.tildeLimitClosed (And.intro E.untiledEquivalenceClosed E.mixedCharacteristicClosed)

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse