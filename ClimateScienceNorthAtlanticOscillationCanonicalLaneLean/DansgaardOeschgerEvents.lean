import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  eventTimeline : List ℝ
  temperatureAnomalyAmplitude : ℝ -> ℝ
  transitionDuration : ℝ
  stadialInterstadialContrast : ℝ
  eventsIdentified : Prop
  amplitudeConstrained : Prop
  durationConstrained : Prop
  contrastValidated : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  eventsIdentifiedClosed : D.eventsIdentified
  amplitudeConstrainedClosed : D.amplitudeConstrained
  durationConstrainedClosed : D.durationConstrained
  contrastValidatedClosed : D.contrastValidated

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.eventsIdentified ∧ D.amplitudeConstrained ∧ D.durationConstrained ∧ D.contrastValidated

theorem dansgaard_oeschger_events_closed_from_evidence (D : DansgaardOeschgerEventsPackage)
    (E : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D := by
  exact And.intro E.eventsIdentifiedClosed
    (And.intro E.amplitudeConstrainedClosed
      (And.intro E.durationConstrainedClosed E.contrastValidatedClosed))

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
