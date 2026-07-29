import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  deltaO18Record : Type u
  temperatureProxy : Type v
  coreDepthScale : Type w
  calibrationEquation : deltaO18Record -> temperatureProxy
  ageModel : Type u
  dO18Measured : Prop
  temperatureDerived : Prop
  calibrationValidated : Prop
  ageModelEstablished : Prop

structure IsotopicPaleothermometryEvidence (P : IsotopicPaleothermometryPackage) where
  dO18MeasuredClosed : P.dO18Measured
  temperatureDerivedClosed : P.temperatureDerived
  calibrationValidatedClosed : P.calibrationValidated
  ageModelEstablishedClosed : P.ageModelEstablished

def IsotopicPaleothermometryClosed (P : IsotopicPaleothermometryPackage) : Prop :=
  P.dO18Measured ∧ P.temperatureDerived ∧ P.calibrationValidated ∧ P.ageModelEstablished

theorem isotopic_paleothermometry_closed_from_evidence (P : IsotopicPaleothermometryPackage)
    (E : IsotopicPaleothermometryEvidence P) : IsotopicPaleothermometryClosed P := by
  exact And.intro E.dO18MeasuredClosed
    (And.intro E.temperatureDerivedClosed
      (And.intro E.calibrationValidatedClosed E.ageModelEstablishedClosed))

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
