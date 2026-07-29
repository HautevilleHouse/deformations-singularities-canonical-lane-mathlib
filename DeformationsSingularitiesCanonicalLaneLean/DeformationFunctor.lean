import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularities

structure DeformationFunctor where
  sourceSpace : Type u
  targetSpace : Type v
  deformations : sourceSpace → targetSpace → Prop
  tangentSpace : Type w
  versalProperty : Prop
  sourceSmooth : sourceSpace → Prop
  targetSmooth : targetSpace → Prop

structure DeformationFunctorEvidence (F : DeformationFunctor) where
  versalPropertyClosed : F.versalProperty
  sourceSmoothClosed : (x : F.sourceSpace) → F.sourceSmooth x
  targetSmoothClosed : (y : F.targetSpace) → F.targetSmooth y

def DeformationFunctorClosed (F : DeformationFunctor) : Prop :=
  F.versalProperty ∧ ((x : F.sourceSpace) → F.sourceSmooth x) ∧ ((y : F.targetSpace) → F.targetSmooth y)

theorem deformation_functor_closed_from_evidence (F : DeformationFunctor) (E : DeformationFunctorEvidence F) :
    DeformationFunctorClosed F := by
  exact And.intro E.versalPropertyClosed (And.intro E.sourceSmoothClosed E.targetSmoothClosed)

end DeformationsSingularities
end HautevilleHouse