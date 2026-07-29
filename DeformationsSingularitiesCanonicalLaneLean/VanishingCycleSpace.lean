import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure VanishingCycleSpacePackage where
  milnorFiberHomology : Type u
  vanishingCycles : Type v
  picardLefschetzFormula : Prop
  seifertForm : Type w
  vanishingCycleDimensional : Prop
  monodromyRepresentation : Prop

structure VanishingCycleSpaceEvidence (V : VanishingCycleSpacePackage) where
  vanishingCycleDimensionalClosed : V.vanishingCycleDimensional
  monodromyRepresentationClosed : V.monodromyRepresentation
  picardLefschetzFormulaClosed : V.picardLefschetzFormula

def VanishingCycleSpaceClosed (V : VanishingCycleSpacePackage) : Prop :=
  V.vanishingCycleDimensional ∧ V.monodromyRepresentation ∧ V.picardLefschetzFormula

theorem vanishing_cycle_space_closed_from_evidence
    (V : VanishingCycleSpacePackage) (E : VanishingCycleSpaceEvidence V) :
    VanishingCycleSpaceClosed V := by
  exact And.intro E.vanishingCycleDimensionalClosed (And.intro E.monodromyRepresentationClosed E.picardLefschetzFormulaClosed)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse