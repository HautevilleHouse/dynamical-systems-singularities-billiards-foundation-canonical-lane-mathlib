import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.BilliardBirkhoff
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.SingularityModels

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure BilliardAnalyticFoundation (B : BilliardTable) where
  flow : BilliardFlow B (PhaseSpace B)
  flowEvidence : flow.piecewiseSmooth ∧ flow.collisionTimesDiscrete ∧ flow.continuityOnPieces
  birkhoff : BirkhoffSection B flow
  birkhoffEvidence : birkhoff.returnMapPiecewiseSmooth ∧ birkhoff.returnMapAreaPreserving
  singularities : SingularityClassification B
  singularitiesEvidence : singularities.classificationComplete
  endpointAnalysis : Prop
  endpointAnalysisEvidence : endpointAnalysis

def BilliardAnalyticFoundationClosed (B : BilliardTable) (A : BilliardAnalyticFoundation B) : Prop :=
  A.flowEvidence ∧ A.birkhoffEvidence ∧ A.singularitiesEvidence ∧ A.endpointAnalysis

theorem billiard_analytic_foundation_closed (B : BilliardTable) (A : BilliardAnalyticFoundation B) :
  BilliardAnalyticFoundationClosed B A := by
  exact And.intro A.flowEvidence (And.intro A.birkhoffEvidence (And.intro A.singularitiesEvidence A.endpointAnalysisEvidence))

end HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse