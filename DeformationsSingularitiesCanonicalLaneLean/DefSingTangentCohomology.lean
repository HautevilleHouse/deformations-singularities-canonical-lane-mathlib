import DeformationsSingularitiesCanonicalLaneLean.ComplexStructureSheaf

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure TangentCohomologyPackage {CS : ComplexStructureSheafPackage} where
  tangentSheaf : Type u
  cohomologyGroups : ℕ → Type v
  obstructionSpace : Type w
  t1Theorem : Prop
  t2Theorem : Prop
  kuranishiMap : Prop

structure TangentCohomologyEvidence {CS : ComplexStructureSheafPackage}
    (TC : TangentCohomologyPackage CS) where
  t1TheoremClosed : TC.t1Theorem
  t2TheoremClosed : TC.t2Theorem
  kuranishiMapClosed : TC.kuranishiMap

def TangentCohomologyClosed {CS : ComplexStructureSheafPackage}
    (TC : TangentCohomologyPackage CS) : Prop :=
  TC.t1Theorem ∧ TC.t2Theorem ∧ TC.kuranishiMap

theorem tangent_cohomology_closed_from_evidence
    {CS : ComplexStructureSheafPackage}
    (TC : TangentCohomologyPackage CS)
    (E : TangentCohomologyEvidence TC) : TangentCohomologyClosed TC := by
  exact And.intro E.t1TheoremClosed (And.intro E.t2TheoremClosed E.kuranishiMapClosed)

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse