import DeformationsSingularitiesCanonicalLaneLean.DeformationFunctors

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure SemiuniversalDeformationPackage {C : DeformationFunctorsPackage} where
  baseSpace : Type u
  deformationFamily : Type v
  completeLocalRing : Prop
  versalProperty : Prop
  miniversalCondition : Prop
  baseSpaceSmooth : Prop

structure SemiuniversalDeformationEvidence {C : DeformationFunctorsPackage}
    (S : SemiuniversalDeformationPackage C) where
  completeLocalRingClosed : S.completeLocalRing
  versalPropertyClosed : S.versalProperty
  miniversalConditionClosed : S.miniversalCondition
  baseSpaceSmoothClosed : S.baseSpaceSmooth

def SemiuniversalDeformationClosed {C : DeformationFunctorsPackage}
    (S : SemiuniversalDeformationPackage C) : Prop :=
  S.completeLocalRing ∧ S.versalProperty ∧ S.miniversalCondition ∧ S.baseSpaceSmooth

theorem semiuniversal_deformation_closed_from_evidence
    {C : DeformationFunctorsPackage}
    (S : SemiuniversalDeformationPackage C)
    (E : SemiuniversalDeformationEvidence S) : SemiuniversalDeformationClosed S := by
  exact And.intro E.completeLocalRingClosed
    (And.intro E.versalPropertyClosed
      (And.intro E.miniversalConditionClosed E.baseSpaceSmoothClosed))

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse