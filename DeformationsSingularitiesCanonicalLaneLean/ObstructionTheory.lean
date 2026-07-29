import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularities

structure ObstructionPackage where
  obstructionSpace : Type u
  infinitesimalDeformations : Type v
  obstructionMap : infinitesimalDeformations → obstructionSpace
  integrabilityCondition : Prop
  versalityCondition : Prop

structure ObstructionEvidence (O : ObstructionPackage) where
  integrabilityConditionClosed : O.integrabilityCondition
  versalityConditionClosed : O.versalityCondition

def ObstructionPackageClosed (O : ObstructionPackage) : Prop :=
  O.integrabilityCondition ∧ O.versalityCondition

theorem obstruction_package_closed_from_evidence (O : ObstructionPackage) (E : ObstructionEvidence O) :
    ObstructionPackageClosed O := by
  exact And.intro E.integrabilityConditionClosed E.versalityConditionClosed

end DeformationsSingularities
end HautevilleHouse