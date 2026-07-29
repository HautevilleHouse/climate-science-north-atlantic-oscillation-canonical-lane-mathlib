import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure AtlanticMultidecadalOscillationPackage where
  amoCoefficients : Type u
  seaSurfaceTemperatures : Type v
  lowFrequencyVariability : Prop
  crossBasinTeleconnection : Prop
  amoCoefficientsDefined : amoCoefficients
  seaSurfaceTemperaturesDefined : seaSurfaceTemperatures
  lowFrequencyVariabilityClosed : lowFrequencyVariability
  crossBasinTeleconnectionClosed : crossBasinTeleconnection

structure AtlanticMultidecadalOscillationEvidence (P : AtlanticMultidecadalOscillationPackage) where
  lowFrequencyVariabilityClosed : P.lowFrequencyVariability
  crossBasinTeleconnectionClosed : P.crossBasinTeleconnection

def AtlanticMultidecadalOscillationClosed (P : AtlanticMultidecadalOscillationPackage) : Prop :=
  P.lowFrequencyVariability ∧ P.crossBasinTeleconnection

theorem atlantic_multidecadal_oscillation_closed_from_evidence
    (P : AtlanticMultidecadalOscillationPackage)
    (E : AtlanticMultidecadalOscillationEvidence P) :
    AtlanticMultidecadalOscillationClosed P := by
  exact And.intro E.lowFrequencyVariabilityClosed E.crossBasinTeleconnectionClosed

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
