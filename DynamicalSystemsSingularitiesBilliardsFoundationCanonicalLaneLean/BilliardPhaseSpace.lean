import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure BilliardTable where
  domain : Type u
  boundary : Type v
  topology : TopologicalSpace domain
  smoothStructure : Prop
  boundarySmooth : Prop
  cornerSet : Set domain
  cornerSetFinite : Fintype cornerSet
  cornerSetTerm : cornerSetFinite

structure PhaseSpace (B : BilliardTable) where
  position : B.domain
  momentum : VectorSpace B.domain
  energyConstraint : Prop
  reflectionLaw : Prop
  reflectionLawTerm : reflectionLaw

structure BilliardFlow (B : BilliardTable) (P : PhaseSpace B) where
  flowMap : ℝ → P → P
  piecewiseSmooth : Prop
  collisionTimes : Set ℝ
  collisionTimesDiscrete : collisionTimes.DiscreteTopology
  continuityOnPieces : Prop
  piecewiseSmoothTerm : piecewiseSmooth
  collisionTimesDiscreteTerm : collisionTimesDiscrete
  continuityOnPiecesTerm : continuityOnPieces

end HautevilleHouse.DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse