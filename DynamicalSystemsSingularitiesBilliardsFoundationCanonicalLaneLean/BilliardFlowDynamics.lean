import canonicalLaneMathlib.AdmissibleClass

/-!
# Billiard Flow Dynamics Package

This module defines the billiard flow as a dynamical system on a table with
reflection boundaries. The flow evolves a point-particle with constant speed
between collisions with the boundary.
-/

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure BilliardTable where
  domain : Type u
  topology : TopologicalSpace domain
  boundary : Set domain
  interior : Set domain
  reflectionLaw : domain → domain
  smoothBoundary : Prop
  interiorOpen : Prop
  boundaryMeasureZero : Prop

structure BilliardFlow (T : BilliardTable) where
  position : ℝ → T.domain
  velocity : ℝ → (T.domain → ℝ)
  constantSpeed : Prop
  elasticReflection : Prop
  collisionTimes : Set ℝ
  flowDefinedGlobally : Prop

def BilliardFlowClosed (T : BilliardTable) (F : BilliardFlow T) : Prop :=
  F.constantSpeed ∧ F.elasticReflection ∧ F.flowDefinedGlobally

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse