import DeformationsSingularitiesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DefSingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse