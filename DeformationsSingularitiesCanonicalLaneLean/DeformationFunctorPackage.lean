import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure DeformationFunctorPackage (B : Type u) (X : Type v) where
  baseSpace : B
  totalSpace : X
  smoothProjection : X → B
  smoothFiber : Prop
  familySmooth : Prop
  versalProperty : Prop
  miniversal : Prop

structure DeformationFunctorEvidence {B : Type u} {X : Type v} (F : DeformationFunctorPackage B X) where
  smoothFiberClosed : F.smoothFiber
  familySmoothClosed : F.familySmooth
  versalPropertyClosed : F.versalProperty
  miniversalClosed : F.miniversal

def DeformationFunctorClosed {B : Type u} {X : Type v} (F : DeformationFunctorPackage B X) : Prop :=
  F.smoothFiber ∧ F.familySmooth ∧ F.versalProperty ∧ F.miniversal

theorem deformation_functor_closed_from_evidence
    {B : Type u} {X : Type v} (F : DeformationFunctorPackage B X) (E : DeformationFunctorEvidence F) :
    DeformationFunctorClosed F := by
  exact And.intro E.smoothFiberClosed (And.intro E.familySmoothClosed (And.intro E.versalPropertyClosed E.miniversalClosed))

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse