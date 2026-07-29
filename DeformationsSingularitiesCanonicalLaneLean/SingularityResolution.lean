import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure SingularityResolution where
  singularSpace : Type
u
  resolutionSpace : Type
u
  resolutionMap : resolutionSpace → singularSpace
  properBirational : Prop
  exceptionalDivisor : Prop
  canonicalSingularities : Prop

structure SingularityResolutionEvidence (R : SingularityResolution) where
  properBirationalClosed : R.properBirational
  exceptionalDivisorClosed : R.exceptionalDivisor
  canonicalSingularitiesClosed : R.canonicalSingularities

def SingularityResolutionClosed (R : SingularityResolution) : Prop :=
  R.properBirational ∧ R.exceptionalDivisor ∧ R.canonicalSingularities

theorem singularity_resolution_closed_from_evidence (R : SingularityResolution)
    (E : SingularityResolutionEvidence R) : SingularityResolutionClosed R := by
  exact And.intro E.properBirationalClosed (And.intro E.exceptionalDivisorClosed E.canonicalSingularitiesClosed)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse