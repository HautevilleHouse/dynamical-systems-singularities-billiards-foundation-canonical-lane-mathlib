import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

def ConstrainedBilliardClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_billiard_endgame (A : AdmissibleClass) :
    ConstrainedBilliardClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse