import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.BilliardFlowDynamics

/-!
# Billiard Map Package

This module defines the billiard map (collision-to-collision map) on the
collision space. The map encodes the discrete dynamics between impacts.
-/

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure CollisionSpace (T : BilliardTable) where
  impactData : Type u
  reflectionCoordinates : Type v
  smoothStructure : Prop

def CollisionSpaceClosed {T : BilliardTable} (C : CollisionSpace T) : Prop :=
  C.smoothStructure

structure BilliardMap {T : BilliardTable} (C : CollisionSpace T) where
  map : C.impactData → C.impactData
  derivativeComputed : Prop
  invariantMeasure : Prop
  symplecticStructure : Prop

def BilliardMapClosed {T : BilliardTable} {C : CollisionSpace T} (M : BilliardMap C) : Prop :=
  M.derivativeComputed ∧ M.invariantMeasure ∧ M.symplecticStructure

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse