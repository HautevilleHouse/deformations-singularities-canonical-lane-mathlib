import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSingularitiesCanonicalLaneLean

structure SchlessingerConditionsPackage where
  fiberProductCondition : Prop
  surjectivityCondition : Prop
  bijectivityCondition : Prop
  infinitesimalLift : Prop
  prorepresentability : Prop

structure SchlessingerConditionsEvidence (S : SchlessingerConditionsPackage) where
  fiberProductConditionClosed : S.fiberProductCondition
  surjectivityConditionClosed : S.surjectivityCondition
  bijectivityConditionClosed : S.bijectivityCondition
  infinitesimalLiftClosed : S.infinitesimalLift
  prorepresentabilityClosed : S.prorepresentability

def SchlessingerConditionsClosed (S : SchlessingerConditionsPackage) : Prop :=
  S.fiberProductCondition ∧ S.surjectivityCondition ∧ S.bijectivityCondition ∧
  S.infinitesimalLift ∧ S.prorepresentability

theorem schlessinger_conditions_closed_from_evidence
    (S : SchlessingerConditionsPackage) (E : SchlessingerConditionsEvidence S) :
    SchlessingerConditionsClosed S := by
  exact And.intro E.fiberProductConditionClosed
    (And.intro E.surjectivityConditionClosed
      (And.intro E.bijectivityConditionClosed
        (And.intro E.infinitesimalLiftClosed E.prorepresentabilityClosed)))

end DeformationsSingularitiesCanonicalLaneLean
end HautevilleHouse