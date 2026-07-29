import DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BilliardSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BilliardAdmittedObject where
  space : BilliardSpace
  table : BilliardTable
  singularitySet : SingularitySet
  ergodicDecomposition : ErgodicDecomposition
  conclusion : Prop

structure BilliardEndgameState where
  object : BilliardAdmittedObject

def BilliardWitnessClosed (O : BilliardAdmittedObject) : Prop :=
  O.conclusion

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse
