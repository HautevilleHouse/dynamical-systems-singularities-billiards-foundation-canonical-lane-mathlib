import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure SinglarityType where
  label : String
  stabilityIndex : ℝ
  invariantManifoldDimension : ℕ
  resonanceCondition : Prop

structure SingularityClassificationPackage where
  hyperbolic : SinglarityType
  elliptic : SinglarityType
  parabolic : SinglarityType
  degenerate : SinglarityType
  classificationComplete : Prop

structure SingularityClassificationEvidence (C : SingularityClassificationPackage) where
  hyperbolicClassified : C.hyperbolic.stabilityIndex < 0
  ellipticClassified : C.elliptic.stabilityIndex > 0
  parabolicClassified : C.parabolic.stabilityIndex = 0
  degenerateClassified : C.degenerate.resonanceCondition
  classificationCompleteClosed : C.classificationComplete

def SingularityClassificationClosed (C : SingularityClassificationPackage) : Prop :=
  C.classificationComplete

theorem singularity_classification_closed_from_evidence
    (C : SingularityClassificationPackage) (E : SingularityClassificationEvidence C) :
    SingularityClassificationClosed C := by
  exact E.classificationCompleteClosed

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse
