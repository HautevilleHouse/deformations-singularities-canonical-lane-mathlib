import DeformationsSingularitiesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

def ConstrainedDeformationSingularityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_deformation_singularity_endgame (A : AdmissibleClass) :
    ConstrainedDeformationSingularityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse