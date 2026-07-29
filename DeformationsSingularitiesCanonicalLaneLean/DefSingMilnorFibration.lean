import DeformationsSingularitiesCanonicalLaneLean.SemiuniversalDeformation

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure MilnorFibrationPackage {C : DeformationFunctorsPackage}
    {S : SemiuniversalDeformationPackage C} where
  milnorFiber : Type u
  milnorNumber : ℕ
  monodromyOperator : Prop
  milnorFiberHomotopyType : Prop
  vanishingCycle : Prop

structure MilnorFibrationEvidence {C : DeformationFunctorsPackage}
    {S : SemiuniversalDeformationPackage C}
    (M : MilnorFibrationPackage C S) where
  milnorFiberHomotopyTypeClosed : M.milnorFiberHomotopyType
  vanishingCycleClosed : M.vanishingCycle

def MilnorFibrationClosed {C : DeformationFunctorsPackage}
    {S : SemiuniversalDeformationPackage C}
    (M : MilnorFibrationPackage C S) : Prop :=
  M.milnorFiberHomotopyType ∧ M.vanishingCycle

theorem milnor_fibration_closed_from_evidence
    {C : DeformationFunctorsPackage}
    {S : SemiuniversalDeformationPackage C}
    (M : MilnorFibrationPackage C S)
    (E : MilnorFibrationEvidence M) : MilnorFibrationClosed M := by
  exact And.intro E.milnorFiberHomotopyTypeClosed E.vanishingCycleClosed

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse