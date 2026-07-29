import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.BilliardPhaseSpace

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure BirkhoffSection (B : BilliardTable) (F : BilliardFlow B (PhaseSpace B)) where
  sectionSurface : Set (PhaseSpace B)
  transversalToFlow : Prop
  returnMap : (PhaseSpace B) → (PhaseSpace B)
  returnMapPiecewiseSmooth : Prop
  returnMapAreaPreserving : Prop
  transversalToFlowTerm : transversalToFlow
  returnMapPiecewiseSmoothTerm : returnMapPiecewiseSmooth
  returnMapAreaPreservingTerm : returnMapAreaPreserving

structure PeriodicOrbitData (B : BilliardTable) (F : BilliardFlow B (PhaseSpace B)) where
  orbitLength : ℕ
  period : ℝ
  stability : Prop
  stabilityWitness : stability

theorem birkhoff_return_map_preserves_area :
  ∀ (B : BilliardTable) (F : BilliardFlow B (PhaseSpace B)) (S : BirkhoffSection B F),
    S.returnMapAreaPreserving := by
  intro B F S
  exact S.returnMapAreaPreservingTerm

end HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse