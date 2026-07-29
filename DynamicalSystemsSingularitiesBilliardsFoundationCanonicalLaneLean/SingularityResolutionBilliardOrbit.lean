import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure SingularityResolutionBilliardOrbitPackage where
  orbitFamily : Type u → Prop
  collisionSequence : Nat → Prop
  blowupCenter : Prop
  desingularizationMap : Prop
  regularizedFlow : Prop

def SingularityResolutionBilliardOrbitClosed (S : SingularityResolutionBilliardOrbitPackage) : Prop :=
  S.blowupCenter ∧ S.desingularizationMap ∧ S.regularizedFlow

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse