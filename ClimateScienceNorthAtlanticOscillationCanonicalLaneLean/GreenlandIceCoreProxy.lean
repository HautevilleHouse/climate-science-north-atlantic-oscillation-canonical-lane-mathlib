import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure GreenlandIceCoreProxyPackage where
  isotopeRatios : Type u
  accumulationRates : Type v
  annualLayerResolution : Prop
  paleoclimateReconstruction : Prop
  isotopeRatiosDefined : isotopeRatios
  accumulationRatesDefined : accumulationRates
  annualLayerResolutionClosed : annualLayerResolution
  paleoclimateReconstructionClosed : paleoclimateReconstruction

structure GreenlandIceCoreProxyEvidence (P : GreenlandIceCoreProxyPackage) where
  annualLayerResolutionClosed : P.annualLayerResolution
  paleoclimateReconstructionClosed : P.paleoclimateReconstruction

def GreenlandIceCoreProxyClosed (P : GreenlandIceCoreProxyPackage) : Prop :=
  P.annualLayerResolution ∧ P.paleoclimateReconstruction

theorem greenland_ice_core_proxy_closed_from_evidence
    (P : GreenlandIceCoreProxyPackage)
    (E : GreenlandIceCoreProxyEvidence P) :
    GreenlandIceCoreProxyClosed P := by
  exact And.intro E.annualLayerResolutionClosed E.paleoclimateReconstructionClosed

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
