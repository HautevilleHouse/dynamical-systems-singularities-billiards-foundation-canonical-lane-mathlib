import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure ReflectionHyperplaneArrangementPackage where
  hyperplanes : List (Type u → Prop)
  reflectionGroup : Type v
  wallCrossingSingularity : Prop
  algebraicCompleteness : Prop
  fundamentalDomain : Prop

def ReflectionHyperplaneArrangementClosed (R : ReflectionHyperplaneArrangementPackage) : Prop :=
  R.wallCrossingSingularity ∧ R.algebraicCompleteness ∧ R.fundamentalDomain

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse