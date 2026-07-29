import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure StormTrackDynamicsPackage where
  eddyFeedback : Type u
  jetStreamPosition : Type v
  baroclinicInstability : Prop
  stormTrackLatitudeShift : Prop
  eddyFeedbackDefined : eddyFeedback
  jetStreamPositionDefined : jetStreamPosition
  baroclinicInstabilityClosed : baroclinicInstability
  stormTrackLatitudeShiftClosed : stormTrackLatitudeShift

structure StormTrackDynamicsEvidence (P : StormTrackDynamicsPackage) where
  baroclinicInstabilityClosed : P.baroclinicInstability
  stormTrackLatitudeShiftClosed : P.stormTrackLatitudeShift

def StormTrackDynamicsClosed (P : StormTrackDynamicsPackage) : Prop :=
  P.baroclinicInstability ∧ P.stormTrackLatitudeShift

theorem storm_track_dynamics_closed_from_evidence
    (P : StormTrackDynamicsPackage)
    (E : StormTrackDynamicsEvidence P) :
    StormTrackDynamicsClosed P := by
  exact And.intro E.baroclinicInstabilityClosed E.stormTrackLatitudeShiftClosed

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
