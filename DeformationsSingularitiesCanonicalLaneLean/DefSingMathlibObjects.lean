import DeformationsSingularitiesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DefSingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DefSingAdmittedObject where
  space : DefSingSpace
  isolatedSingularity : Prop
  germAnalytic : Prop
  versalFamily : Type
  versalFamilyTopology : TopologicalSpace versalFamily
  familyExists : Prop
  conclusion : familyExists

structure DefSingEndgameState where
  object : DefSingAdmittedObject

def DefSingWitnessClosed (O : DefSingAdmittedObject) : Prop :=
  O.familyExists

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse