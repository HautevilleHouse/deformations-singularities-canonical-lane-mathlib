import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure MilnorFibrationPackage where
  isolatedSingularity : Type u
  milnorFiber : Type v
  milnorNumber : ℕ
  monodromyAction : Type w
  milnorFibrationExists : Prop
  milnorNumberComputed : Prop
  monodromyComputed : Prop

structure MilnorFibrationEvidence (M : MilnorFibrationPackage) where
  milnorFibrationExistsClosed : M.milnorFibrationExists
  milnorNumberComputedClosed : M.milnorNumberComputed
  monodromyComputedClosed : M.monodromyComputed

def MilnorFibrationClosed (M : MilnorFibrationPackage) : Prop :=
  M.milnorFibrationExists ∧ M.milnorNumberComputed ∧ M.monodromyComputed

theorem milnor_fibration_closed_from_evidence
    (M : MilnorFibrationPackage) (E : MilnorFibrationEvidence M) :
    MilnorFibrationClosed M := by
  exact And.intro E.milnorFibrationExistsClosed (And.intro E.milnorNumberComputedClosed E.monodromyComputedClosed)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse