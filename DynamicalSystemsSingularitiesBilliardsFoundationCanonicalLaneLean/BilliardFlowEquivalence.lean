import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure BilliardFlowEquivalencePackage where
  flow : Type u → Type v
  equivalenceClassification : Prop
  ergodicComponents : Prop
  mixingProperties : Prop
  spectralGap : Prop

def BilliardFlowEquivalenceClosed (B : BilliardFlowEquivalencePackage) : Prop :=
  B.equivalenceClassification ∧ B.mixingProperties ∧ B.spectralGap

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse