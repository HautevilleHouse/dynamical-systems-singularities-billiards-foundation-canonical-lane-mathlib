import DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.BilliardTable

/-!
# Singularity Analysis Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure SingularityPoint where
  position : ℝ × ℝ
  type : String
  multiplicity : ℕ

def SingularityPointClosed (S : SingularityPoint) : Prop :=
  S.type ∈ {"corner", "cusp", "tangential"} ∧ S.multiplicity ≥ 1

structure SingularitySet where
  points : List SingularityPoint
  closureProperty : Prop
  measureZero : Prop

def SingularitySetClosed (S : SingularitySet) : Prop :=
  S.closureProperty ∧ S.measureZero

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse
