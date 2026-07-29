import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.BilliardPhaseSpace

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure ReflectionLawPackage (β : BilliardTable) where
  elasticCollisionCondition : Prop
  angleOfIncidenceEqualsReflection : Prop
  tangentialMomentumPreserved : Prop
  lawConsistent : Prop

structure ReflectionLawEvidence (β : BilliardTable) (R : ReflectionLawPackage β) where
  elasticCollisionConditionClosed : R.elasticCollisionCondition
  angleOfIncidenceEqualsReflectionClosed : R.angleOfIncidenceEqualsReflection
  tangentialMomentumPreservedClosed : R.tangentialMomentumPreserved
  lawConsistentClosed : R.lawConsistent

def ReflectionLawClosed (β : BilliardTable) (R : ReflectionLawPackage β) : Prop :=
  R.lawConsistent

theorem reflection_law_closed_from_evidence
    (β : BilliardTable) (R : ReflectionLawPackage β) (E : ReflectionLawEvidence β R) :
    ReflectionLawClosed β R := by
  exact E.lawConsistentClosed

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse
