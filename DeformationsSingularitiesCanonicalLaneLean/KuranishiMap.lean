import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure KuranishiMapPackage where
  analyticSpace : Type u
  tangentSpace : Type v
  obstructionMap : Type w
  kuranishiMapDefined : Prop
  versalFamilyParameterized : Prop
  reducedness : Prop

structure KuranishiMapEvidence (K : KuranishiMapPackage) where
  kuranishiMapDefinedClosed : K.kuranishiMapDefined
  versalFamilyParameterizedClosed : K.versalFamilyParameterized
  reducednessClosed : K.reducedness

def KuranishiMapClosed (K : KuranishiMapPackage) : Prop :=
  K.kuranishiMapDefined ∧ K.versalFamilyParameterized ∧ K.reducedness

theorem kuranishi_map_closed_from_evidence
    (K : KuranishiMapPackage) (E : KuranishiMapEvidence K) :
    KuranishiMapClosed K := by
  exact And.intro E.kuranishiMapDefinedClosed (And.intro E.versalFamilyParameterizedClosed E.reducednessClosed)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse