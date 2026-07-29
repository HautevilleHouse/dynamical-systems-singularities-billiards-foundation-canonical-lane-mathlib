import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.BilliardMap

/-!
# Hyperbolicity and Ergodicity Package

This module defines hyperbolic behavior (non-zero Lyapunov exponents) and
ergodicity for billiard systems. Dispersing billiards are uniformly hyperbolic;
mixing properties follow.
-/

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure HyperbolicBilliard {T : BilliardTable} {C : CollisionSpace T} (M : BilliardMap C) where
  lyapunovExponentsNonZero : Prop
  stableUnstableFoliation : Prop
  bernoulliProperty : Prop
  ergodicMeasure : Prop

def HyperbolicBilliardClosed {T : BilliardTable} {C : CollisionSpace T} {M : BilliardMap C} (H : HyperbolicBilliard M) : Prop :=
  H.lyapunovExponentsNonZero ∧ H.stableUnstableFoliation ∧ H.bernoulliProperty ∧ H.ergodicMeasure

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse