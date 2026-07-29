import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean

structure PhaseSpaceStratificationPackage where
  configSpace : Type u
  phaseSpace : Type v
  collisionFreeRegion : Set phaseSpace
  analyticExtension : Prop
  boundaryStructure : Prop
  uniformRationality : Prop

def PhaseSpaceStratificationClosed (P : PhaseSpaceStratificationPackage) : Prop := 
  P.analyticExtension ∧ P.boundaryStructure ∧ P.uniformRationality

end DynamicalSystemsSingularitiesBilliardsFoundationCanonicalLaneLean
end HautevilleHouse