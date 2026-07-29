import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure SingularityStratification (X : Type u) [TopologicalSpace X] where
  strata : List (Set X)
  locallyClosed : Prop
  frontierCondition : Prop
  equisingularity : Prop

structure SingularityStratificationEvidence (S : SingularityStratification X) where
  locallyClosedClosed : S.locallyClosed
  frontierConditionClosed : S.frontierCondition
  equisingularityClosed : S.equisingularity

def SingularityStratificationClosed (S : SingularityStratification X) : Prop :=
  S.locallyClosed ∧ S.frontierCondition ∧ S.equisingularity

theorem singularity_stratification_closed_from_evidence (S : SingularityStratification X) (E : SingularityStratificationEvidence S) :
    SingularityStratificationClosed S := by
  exact And.intro E.locallyClosedClosed (And.intro E.frontierConditionClosed E.equisingularityClosed)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse