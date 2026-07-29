import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure SingularityModel where
  phaseSpace : Type
  vectorField : Type
  equilibriumSet : Set Type
  linearization : Prop

structure SingularityEvidence (M : SingularityModel) where
  equilibriumClassified : Prop
  linearizationClosed : Prop

def SingularityClosed (M : SingularityModel) : Prop :=
  M.equilibriumSet ≠ ∅ ∧ M.linearization

theorem singularity_closed_from_evidence (M : SingularityModel)
    (E : SingularityEvidence M) : SingularityClosed M := by
  exact And.intro E.equilibriumClassified E.linearizationClosed

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse