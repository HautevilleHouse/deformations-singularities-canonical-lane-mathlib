import DeformationsSingularitiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure AdmissibleClass where
  object : DefSingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DefSingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse