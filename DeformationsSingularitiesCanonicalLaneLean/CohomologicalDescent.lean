import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure CohomologicalDescent (X : Type u) [TopologicalSpace X] where
  hypercohomology : Type v
  spectralSequence : Type w
  weightFiltration : Prop
  purityProperty : Prop
  vanishingCycles : Prop

structure CohomologicalDescentEvidence (C : CohomologicalDescent X) where
  weightFiltrationClosed : C.weightFiltration
  purityPropertyClosed : C.purityProperty
  vanishingCyclesClosed : C.vanishingCycles

def CohomologicalDescentClosed (C : CohomologicalDescent X) : Prop :=
  C.weightFiltration ∧ C.purityProperty ∧ C.vanishingCycles

theorem cohomological_descent_closed_from_evidence (C : CohomologicalDescent X) (E : CohomologicalDescentEvidence C) :
    CohomologicalDescentClosed C := by
  exact And.intro E.weightFiltrationClosed (And.intro E.purityPropertyClosed E.vanishingCyclesClosed)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse