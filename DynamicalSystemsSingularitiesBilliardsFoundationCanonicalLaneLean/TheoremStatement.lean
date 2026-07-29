import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure BilliardsTheoremObject where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String

def sourceBilliardsTheoremStatement : BilliardsTheoremObject :=
  { sourceKey := "DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean",
    theoremName := "BilliardsClosure",
    theoremObject := "ConstrainedBilliardsClosure",
    classicalBoundary := "open",
    carriedRemainder := "mathlib foundations for billiards dynamics"
  }

theorem billiards_classical_boundary_open :
    sourceBilliardsTheoremStatement.classicalBoundary = "open" := by
  rfl

theorem billiards_carried_remainder_identified :
    sourceBilliardsTheoremStatement.carriedRemainder = "mathlib foundations for billiards dynamics" := by
  rfl

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse