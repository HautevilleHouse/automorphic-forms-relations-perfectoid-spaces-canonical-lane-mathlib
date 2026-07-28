import AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.FarguesFontaineCurve

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure LocalLanglandsCorrespondencePackage {P : PerfectoidSpacesPackage}
    (C : FarguesFontaineCurvePackage P) where
  localLanglandsConjecture : Prop
  perfectoidApproachEstablished : Prop
  sheafificationCompatible : Prop
  geometricSatakeApplied : Prop

structure LocalLanglandsCorrespondenceEvidence {P : PerfectoidSpacesPackage}
    {C : FarguesFontaineCurvePackage P}
    (L : LocalLanglandsCorrespondencePackage C) where
  localLanglandsConjectureClosed : L.localLanglandsConjecture
  perfectoidApproachEstablishedClosed : L.perfectoidApproachEstablished
  sheafificationCompatibleClosed : L.sheafificationCompatible
  geometricSatakeAppliedClosed : L.geometricSatakeApplied

def LocalLanglandsCorrespondenceClosed {P : PerfectoidSpacesPackage}
    {C : FarguesFontaineCurvePackage P}
    (L : LocalLanglandsCorrespondencePackage C) : Prop :=
  L.localLanglandsConjecture ∧ L.perfectoidApproachEstablished ∧
  L.sheafificationCompatible ∧ L.geometricSatakeApplied

theorem local_langlands_correspondence_closed_from_evidence
    {P : PerfectoidSpacesPackage} {C : FarguesFontaineCurvePackage P}
    (L : LocalLanglandsCorrespondencePackage C)
    (E : LocalLanglandsCorrespondenceEvidence L) :
    LocalLanglandsCorrespondenceClosed L := by
  exact And.intro E.localLanglandsConjectureClosed
    (And.intro E.perfectoidApproachEstablishedClosed
      (And.intro E.sheafificationCompatibleClosed E.geometricSatakeAppliedClosed))

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse