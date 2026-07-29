import DeformationsSingularitiesCanonicalLaneLean.SingularityAnalysis

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure GermClassificationPackage {D : DeformationFamilyPackage}
    (S : SingularityAnalysisPackage D) where
  germsClassified : Prop
  isolatedSingularities : Prop
  milnorNumberFinite : Prop
  germsClassifiedTerm : germsClassified
  isolatedSingularitiesTerm : isolatedSingularities
  milnorNumberFiniteTerm : milnorNumberFinite

structure GermClassificationEvidence {D : DeformationFamilyPackage}
    {S : SingularityAnalysisPackage D} (G : GermClassificationPackage S) where
  germsClassifiedClosed : G.germsClassified
  isolatedSingularitiesClosed : G.isolatedSingularities
  milnorNumberFiniteClosed : G.milnorNumberFinite

def GermClassificationClosed {D : DeformationFamilyPackage}
    {S : SingularityAnalysisPackage D} (G : GermClassificationPackage S) : Prop :=
  G.germsClassified ∧ G.isolatedSingularities ∧ G.milnorNumberFinite

theorem germ_classification_closed_from_evidence
    {D : DeformationFamilyPackage} {S : SingularityAnalysisPackage D}
    (G : GermClassificationPackage S) (E : GermClassificationEvidence G) :
    GermClassificationClosed G := by
  exact And.intro E.germsClassifiedClosed
    (And.intro E.isolatedSingularitiesClosed E.milnorNumberFiniteClosed)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse