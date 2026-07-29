import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularities

structure KuranishiModel (F : DeformationFunctor) where
  baseSpace : Type u
  semiuniversalFamily : baseSpace → F.sourceSpace → F.targetSpace → Prop
  versalMap : baseSpace → F.sourceSpace → F.targetSpace
  integrabilityProof : Prop
  baseSmooth : baseSpace → Prop

structure KuranishiModelEvidence {F : DeformationFunctor} (K : KuranishiModel F) where
  integrabilityProofClosed : K.integrabilityProof
  baseSmoothClosed : (x : K.baseSpace) → K.baseSmooth x

def KuranishiModelClosed {F : DeformationFunctor} (K : KuranishiModel F) : Prop :=
  K.integrabilityProof ∧ ((x : K.baseSpace) → K.baseSmooth x)

theorem kuranishi_model_closed_from_evidence
    {F : DeformationFunctor} (K : KuranishiModel F) (E : KuranishiModelEvidence K) :
    KuranishiModelClosed K := by
  exact And.intro E.integrabilityProofClosed E.baseSmoothClosed

end DeformationsSingularities
end HautevilleHouse