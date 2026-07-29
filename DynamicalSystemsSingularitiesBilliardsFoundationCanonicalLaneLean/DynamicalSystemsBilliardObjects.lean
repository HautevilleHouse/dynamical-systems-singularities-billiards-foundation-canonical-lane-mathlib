import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure BilliardTable where
  carrier : Type
  boundary : Set carrier
  interior : Set carrier
  reflectionLaw : carrier → carrier → Prop

def BilliardAdmittedObject where
  table : BilliardTable
  dynamics : Prop
  spectralGap : Prop
  conclusion : dynamics ∧ spectralGap

def BilliardWitnessClosed (O : BilliardAdmittedObject) : Prop :=
  O.conclusion

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse