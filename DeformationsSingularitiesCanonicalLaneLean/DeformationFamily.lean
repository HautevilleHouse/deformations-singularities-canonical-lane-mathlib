import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure DeformationFamilyPackage where
  baseSpace : Type u
  fiberType : Type v
  projection : baseSpace → fiberType
  deformationParameter : Set ℝ
  familySmooth : Prop
  parameterSmooth : Prop
  familySmoothTerm : familySmooth
  parameterSmoothTerm : parameterSmooth

structure DeformationFamilyEvidence (D : DeformationFamilyPackage) where
  familySmoothClosed : D.familySmooth
  parameterSmoothClosed : D.parameterSmooth

def DeformationFamilyClosed (D : DeformationFamilyPackage) : Prop :=
  D.familySmooth ∧ D.parameterSmooth

theorem deformation_family_closed_from_evidence (D : DeformationFamilyPackage)
    (E : DeformationFamilyEvidence D) : DeformationFamilyClosed D := by
  exact And.intro E.familySmoothClosed E.parameterSmoothClosed

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse