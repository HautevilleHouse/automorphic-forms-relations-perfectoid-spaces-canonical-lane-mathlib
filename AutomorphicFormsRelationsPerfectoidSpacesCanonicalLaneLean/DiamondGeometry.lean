import AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.LanglandsCorrespondence

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure DiamondPackage (A : AutomorphicAdmissibleClass)
    (T : TiltingPackage A) (C : FarguesFontaineCurvePackage A T)
    (L : LanglandsCorrespondencePackage A T C) where
  diamondSpace : Type u
  vSheaf : Type v
  diamondConstruction : Prop
  diamondProperties : Prop
  diamondClosed : Prop
  diamondClosedTerm : diamondClosed

structure DiamondEvidence (A : AutomorphicAdmissibleClass)
    (T : TiltingPackage A) (C : FarguesFontaineCurvePackage A T)
    (L : LanglandsCorrespondencePackage A T C)
    (D : DiamondPackage A T C L) where
  diamondConstructionClosed : D.diamondConstruction
  diamondPropertiesClosed : D.diamondProperties

def DiamondClosed (A : AutomorphicAdmissibleClass)
    (T : TiltingPackage A) (C : FarguesFontaineCurvePackage A T)
    (L : LanglandsCorrespondencePackage A T C)
    (D : DiamondPackage A T C L) : Prop :=
  D.diamondConstruction ∧ D.diamondProperties

theorem diamond_closed_from_evidence (A : AutomorphicAdmissibleClass)
    (T : TiltingPackage A) (C : FarguesFontaineCurvePackage A T)
    (L : LanglandsCorrespondencePackage A T C)
    (D : DiamondPackage A T C L) (E : DiamondEvidence A T C L D) :
    DiamondClosed A T C L D := by
  exact And.intro E.diamondConstructionClosed E.diamondPropertiesClosed

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse