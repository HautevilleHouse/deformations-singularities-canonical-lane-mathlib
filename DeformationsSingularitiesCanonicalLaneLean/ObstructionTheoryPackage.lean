import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure ObstructionTheoryPackage where
  deformationProblem : Type
u
  obstructionSpace : Type
u
  obstructionMap : deformationProblem → obstructionSpace
  vanishingCondition : Prop
  smoothnessCriterion : Prop

structure ObstructionTheoryEvidence (O : ObstructionTheoryPackage) where
  vanishingConditionClosed : O.vanishingCondition
  smoothnessCriterionClosed : O.smoothnessCriterion

def ObstructionTheoryClosed (O : ObstructionTheoryPackage) : Prop :=
  O.vanishingCondition ∧ O.smoothnessCriterion

theorem obstruction_theory_closed_from_evidence (O : ObstructionTheoryPackage)
    (E : ObstructionTheoryEvidence O) : ObstructionTheoryClosed O := by
  exact And.intro E.vanishingConditionClosed E.smoothnessCriterionClosed

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse