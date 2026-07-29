import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure MiniversalDeformation where
  germ : Type
u
  baseSpace : Type
u
  totalFamily : baseSpace → Type
u
  versalityProperty : Prop
  infinitesimalLifting : Prop
  obstructionControlled : Prop

structure MiniversalDeformationEvidence (M : MiniversalDeformation) where
  versalityPropertyClosed : M.versalityProperty
  infinitesimalLiftingClosed : M.infinitesimalLifting
  obstructionControlledClosed : M.obstructionControlled

def MiniversalDeformationClosed (M : MiniversalDeformation) : Prop :=
  M.versalityProperty ∧ M.infinitesimalLifting ∧ M.obstructionControlled

theorem miniversal_deformation_closed_from_evidence (M : MiniversalDeformation)
    (E : MiniversalDeformationEvidence M) : MiniversalDeformationClosed M := by
  exact And.intro E.versalityPropertyClosed (And.intro E.infinitesimalLiftingClosed E.obstructionControlledClosed)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse