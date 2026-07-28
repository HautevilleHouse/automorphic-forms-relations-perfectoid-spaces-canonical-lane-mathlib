import AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean.AutomorphicForm

namespace HautevilleHouse
namespace AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean

structure FarguesFontaineCurvePackage {P : PerfectoidSpacePackage} {A : AutomorphicFormPackage P} where
  curve : Type u
  topology : TopologicalSpace curve
  schematicStructure : Prop
  untiltParameterization : Prop
  cohomologicalCorrespondence : Prop

structure FarguesFontaineCurveEvidence {P : PerfectoidSpacePackage} {A : AutomorphicFormPackage P} (F : FarguesFontaineCurvePackage P A) where
  schematicStructureClosed : F.schematicStructure
  untiltParameterizationClosed : F.untiltParameterization
  cohomologicalCorrespondenceClosed : F.cohomologicalCorrespondence

def FarguesFontaineCurveClosed {P : PerfectoidSpacePackage} {A : AutomorphicFormPackage P} (F : FarguesFontaineCurvePackage P A) : Prop :=
  F.schematicStructure ∧ F.untiltParameterization ∧ F.cohomologicalCorrespondence

theorem fargues_fontaine_curve_closed_from_evidence {P : PerfectoidSpacePackage} {A : AutomorphicFormPackage P} (F : FarguesFontaineCurvePackage P A) (E : FarguesFontaineCurveEvidence F) :
    FarguesFontaineCurveClosed F := by
  exact And.intro E.schematicStructureClosed
    (And.intro E.untiltParameterizationClosed E.cohomologicalCorrespondenceClosed)

end AutomorphicFormsRelationsPerfectoidSpacesCanonicalLaneLean
end HautevilleHouse