import DeformationsSingularitiesCanonicalLaneLean.DeformationFamily

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure SingularityAnalysisPackage (D : DeformationFamilyPackage) where
  singularSet : Set D.baseSpace
  germType : D.baseSpace → Type w
  verseDeformationExists : Prop
  miniversalFamilyConstructed : Prop
  verseDeformationExistsTerm : verseDeformationExists
  miniversalFamilyConstructedTerm : miniversalFamilyConstructed

structure SingularityAnalysisEvidence {D : DeformationFamilyPackage}
    (S : SingularityAnalysisPackage D) where
  verseDeformationExistsClosed : S.verseDeformationExists
  miniversalFamilyConstructedClosed : S.miniversalFamilyConstructed

def SingularityAnalysisClosed {D : DeformationFamilyPackage}
    (S : SingularityAnalysisPackage D) : Prop :=
  S.verseDeformationExists ∧ S.miniversalFamilyConstructed

theorem singularity_analysis_closed_from_evidence
    {D : DeformationFamilyPackage} (S : SingularityAnalysisPackage D)
    (E : SingularityAnalysisEvidence S) : SingularityAnalysisClosed S := by
  exact And.intro E.verseDeformationExistsClosed E.miniversalFamilyConstructedClosed

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse