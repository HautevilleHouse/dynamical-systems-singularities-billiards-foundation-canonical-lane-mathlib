import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.BilliardAnalyticFoundation
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure BilliardRouteObligations (B : BilliardTable) where
  phaseSpaceConstructed : Prop
  flowDefined : Prop
  birkhoffSectionExists : Prop
  singularitiesClassified : Prop
  endpointReached : Prop

structure BilliardRouteEvidence (B : BilliardTable) (R : BilliardRouteObligations B) where
  phaseSpaceConstructedClosed : R.phaseSpaceConstructed
  flowDefinedClosed : R.flowDefined
  birkhoffSectionExistsClosed : R.birkhoffSectionExists
  singularitiesClassifiedClosed : R.singularitiesClassified
  endpointReachedClosed : R.endpointReached

def BilliardRouteClosed (B : BilliardTable) (R : BilliardRouteObligations B) : Prop :=
  R.phaseSpaceConstructed ∧ R.flowDefined ∧ R.birkhoffSectionExists ∧ R.singularitiesClassified ∧ R.endpointReached

theorem billiard_route_closed_from_evidence (B : BilliardTable) (R : BilliardRouteObligations B) (E : BilliardRouteEvidence B R) :
  BilliardRouteClosed B R := by
  exact And.intro E.phaseSpaceConstructedClosed (And.intro E.flowDefinedClosed (And.intro E.birkhoffSectionExistsClosed (And.intro E.singularitiesClassifiedClosed E.endpointReachedClosed)))

structure BilliardCanonicalLaneRoute (A : AdmissibleClass) where
  B : BilliardTable
  obligations : BilliardRouteObligations B
  evidence : BilliardRouteEvidence B obligations
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem billiard_route_yields_constrained_closure (A : AdmissibleClass) (R : BilliardCanonicalLaneRoute A) :
  ConstrainedTheoremClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse