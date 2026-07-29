import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularities

def ConstrainedDeformationSingularitiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_deformation_singularities_endgame (A : AdmissibleClass) :
    ConstrainedDeformationSingularitiesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DeformationsSingularities
end HautevilleHouse