import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure TjurinaAndCotangentCohomologyPackage where
  tjurinaAlgebra : Type u
  cotangentCohomology : Type v
  obstructionSpace : Type w
  finiteDimension : Prop
  smoothingCriterion : Prop
  completeness : Prop

structure TjurinaAndCotangentCohomologyEvidence (T : TjurinaAndCotangentCohomologyPackage) where
  finiteDimensionClosed : T.finiteDimension
  smoothingCriterionClosed : T.smoothingCriterion
  completenessClosed : T.completeness

def TjurinaAndCotangentCohomologyClosed (T : TjurinaAndCotangentCohomologyPackage) : Prop :=
  T.finiteDimension ∧ T.smoothingCriterion ∧ T.completeness

theorem tjurina_and_cotangent_cohomology_closed_from_evidence
    (T : TjurinaAndCotangentCohomologyPackage) (E : TjurinaAndCotangentCohomologyEvidence T) :
    TjurinaAndCotangentCohomologyClosed T := by
  exact And.intro E.finiteDimensionClosed (And.intro E.smoothingCriterionClosed E.completenessClosed)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse