import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.BilliardPhaseSpace

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure PeriodicOrbitPackage (β : BilliardTable) (P : BilliardPhaseSpace β) where
  period : ℝ
  closedOrbitCondition : Prop
  stabilityMultiplier : ℝ
  orbitIsolated : Prop
  orbitExists : Prop
  orbitExistsTerm : orbitExists

structure PeriodicOrbitEvidence (β : BilliardTable) (P : BilliardPhaseSpace β) (O : PeriodicOrbitPackage β P) where
  periodPositive : O.period > 0
  closedOrbitConditionClosed : O.closedOrbitCondition
  stabilityComputed : O.stabilityMultiplier ≠ 0
  orbitIsolatedClosed : O.orbitIsolated
  orbitExistsClosed : O.orbitExists
  orbitExistsTerm : O.orbitExistsTerm

def PeriodicOrbitClosed (β : BilliardTable) (P : BilliardPhaseSpace β) (O : PeriodicOrbitPackage β P) : Prop :=
  O.orbitExists ∧ O.closedOrbitCondition ∧ O.orbitIsolated

theorem periodic_orbit_closed_from_evidence
    (β : BilliardTable) (P : BilliardPhaseSpace β) (O : PeriodicOrbitPackage β P)
    (E : PeriodicOrbitEvidence β P O) : PeriodicOrbitClosed β P O := by
  exact And.intro E.orbitExistsClosed (And.intro E.closedOrbitConditionClosed E.orbitIsolatedClosed)

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse
