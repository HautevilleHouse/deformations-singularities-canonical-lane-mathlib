import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularities

structure IsolatedSingularityPackage where
  singularPoint : Type u
  milnorNumber : Nat
  tyurinaNumber : Nat
  modality : Nat
  classification : String

structure IsolatedSingularityEvidence (I : IsolatedSingularityPackage) where
  milnorNumberComputed : I.milnorNumber > 0
  tyurinaNumberComputed : I.tyurinaNumber ≥ 0
  modalityComputed : I.modality ≤ 2
  classificationVerified : I.classification ≠ ""

def IsolatedSingularityClosed (I : IsolatedSingularityPackage) : Prop :=
  I.milnorNumber > 0 ∧ I.tyurinaNumber ≥ 0 ∧ I.modality ≤ 2 ∧ I.classification ≠ ""

theorem isolated_singularity_closed_from_evidence (I : IsolatedSingularityPackage) (E : IsolatedSingularityEvidence I) :
    IsolatedSingularityClosed I := by
  exact And.intro E.milnorNumberComputed
    (And.intro E.tyurinaNumberComputed
      (And.intro E.modalityComputed E.classificationVerified))

end DeformationsSingularities
end HautevilleHouse