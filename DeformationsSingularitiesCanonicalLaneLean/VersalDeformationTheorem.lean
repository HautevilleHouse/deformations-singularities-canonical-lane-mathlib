import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularities

structure VersalDeformationPackage (F : DeformationFunctor) (K : KuranishiModel F) where
  versalFamilyExists : Prop
  uniquenessUpToEquivalence : Prop
  miniversalSubfamily : Prop

structure VersalDeformationEvidence {F : DeformationFunctor} {K : KuranishiModel F} (V : VersalDeformationPackage F K) where
  versalFamilyExistsClosed : V.versalFamilyExists
  uniquenessUpToEquivalenceClosed : V.uniquenessUpToEquivalence
  miniversalSubfamilyClosed : V.miniversalSubfamily

def VersalDeformationClosed {F : DeformationFunctor} {K : KuranishiModel F} (V : VersalDeformationPackage F K) : Prop :=
  V.versalFamilyExists ∧ V.uniquenessUpToEquivalence ∧ V.miniversalSubfamily

theorem versal_deformation_closed_from_evidence
    {F : DeformationFunctor} {K : KuranishiModel F} (V : VersalDeformationPackage F K)
    (E : VersalDeformationEvidence V) : VersalDeformationClosed V := by
  exact And.intro E.versalFamilyExistsClosed
    (And.intro E.uniquenessUpToEquivalenceClosed E.miniversalSubfamilyClosed)

end DeformationsSingularities
end HautevilleHouse