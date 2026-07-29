import DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Billiard Table Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure BilliardBoundaryComponent where
  boundaryType : String
  convexity : Prop
  curvaturePositive : Prop
  endpointReachable : Prop

def BilliardBoundaryComponentClosed (B : BilliardBoundaryComponent) : Prop :=
  B.boundaryType = "convex" ∧ B.convexity ∧ B.curvaturePositive ∧ B.endpointReachable

structure BilliardTable where
  domain : Type u
  boundary : List BilliardBoundaryComponent
  measureFinite : Prop
  noGrazingDefined : Prop
  ergodicDecomposition : Prop

def BilliardTableClosed (B : BilliardTable) : Prop :=
  B.measureFinite ∧ B.noGrazingDefined ∧ B.ergodicDecomposition

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse
