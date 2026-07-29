import DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.SingularityAnalysis

/-!
# Ergodic Decomposition Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure ErgodicComponent where
  invariantSet : Set (ℝ × ℝ)
  measurePreserved : Prop
  mixingProperty : Prop

def ErgodicComponentClosed (E : ErgodicComponent) : Prop :=
  E.measurePreserved ∧ E.mixingProperty

structure ErgodicDecomposition where
  components : List ErgodicComponent
  unionFullMeasure : Prop
  almostSurelyDecomposes : Prop

def ErgodicDecompositionClosed (E : ErgodicDecomposition) : Prop :=
  E.unionFullMeasure ∧ E.almostSurelyDecomposes

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse
