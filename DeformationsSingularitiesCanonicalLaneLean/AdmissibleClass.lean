import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure DeformationsSingularitiesAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  deformationFamily : Set (Set space)
  singularitySet : Set space
  germModel : Type v
  germTopology : TopologicalSpace germModel
  conclusion : Prop

structure AdmissibleClass where
  object : DeformationsSingularitiesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse