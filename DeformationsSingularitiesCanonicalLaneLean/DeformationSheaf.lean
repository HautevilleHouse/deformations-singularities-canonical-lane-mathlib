import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure DeformationSheaf where
  base : Type
u
  fiber : Type
u
  totalSpace : Type
u
  projection : totalSpace → base
  smooth : Prop
  deformationRetract : Prop
  obstructionClass : Prop

structure DeformationSheafEvidence (S : DeformationSheaf) where
  smoothClosed : S.smooth
  deformationRetractClosed : S.deformationRetract
  obstructionClassClosed : S.obstructionClass

def DeformationSheafClosed (S : DeformationSheaf) : Prop :=
  S.smooth ∧ S.deformationRetract ∧ S.obstructionClass

theorem deformation_sheaf_closed_from_evidence (S : DeformationSheaf)
    (E : DeformationSheafEvidence S) : DeformationSheafClosed S := by
  exact And.intro E.smoothClosed (And.intro E.deformationRetractClosed E.obstructionClassClosed)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse