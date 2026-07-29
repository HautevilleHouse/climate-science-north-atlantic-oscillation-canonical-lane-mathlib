import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure MilankovitchForcingPackage where
  orbitalParameters : Type u
  insolationAnomalies : Type v
  precessionEccentricityObliquity : Prop
  climateResponse : Prop
  orbitalParametersDefined : orbitalParameters
  insolationAnomaliesDefined : insolationAnomalies
  precessionEccentricityObliquityClosed : precessionEccentricityObliquity
  climateResponseClosed : climateResponse

structure MilankovitchForcingEvidence (P : MilankovitchForcingPackage) where
  precessionEccentricityObliquityClosed : P.precessionEccentricityObliquity
  climateResponseClosed : P.climateResponse

def MilankovitchForcingClosed (P : MilankovitchForcingPackage) : Prop :=
  P.precessionEccentricityObliquity ∧ P.climateResponse

theorem milankovitch_forcing_closed_from_evidence
    (P : MilankovitchForcingPackage)
    (E : MilankovitchForcingEvidence P) :
    MilankovitchForcingClosed P := by
  exact And.intro E.precessionEccentricityObliquityClosed E.climateResponseClosed

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
