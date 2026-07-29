import canonicalLaneMathlib.AdmissibleClass
import DeformationsSingularitiesCanonicalLaneLean.DeformationFunctorPackage

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure VersalDeformationPackage {B : Type u} {X : Type v}
    (F : DeformationFunctorPackage B X) where
  baseSmooth : Prop
  totalSmooth : Prop
  versalProperty : Prop
  miniversal : Prop
  universalProperty : Prop

structure VersalDeformationEvidence {B : Type u} {X : Type v}
    {F : DeformationFunctorPackage B X} (V : VersalDeformationPackage F) where
  baseSmoothClosed : V.baseSmooth
  totalSmoothClosed : V.totalSmooth
  versalPropertyClosed : V.versalProperty
  miniversalClosed : V.miniversal
  universalPropertyClosed : V.universalProperty

def VersalDeformationClosed {B : Type u} {X : Type v}
    {F : DeformationFunctorPackage B X} (V : VersalDeformationPackage F) : Prop :=
  V.baseSmooth ∧ V.totalSmooth ∧ V.versalProperty ∧ V.miniversal ∧ V.universalProperty

theorem versal_deformation_closed_from_evidence
    {B : Type u} {X : Type v} {F : DeformationFunctorPackage B X}
    (V : VersalDeformationPackage F) (E : VersalDeformationEvidence V) :
    VersalDeformationClosed V := by
  exact And.intro E.baseSmoothClosed
    (And.intro E.totalSmoothClosed
      (And.intro E.versalPropertyClosed
        (And.intro E.miniversalClosed E.universalPropertyClosed)))

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse