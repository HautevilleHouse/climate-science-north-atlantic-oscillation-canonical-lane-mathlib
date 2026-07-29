import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure MilankovitchCyclesPackage where
  obliquity : ℝ -> ℝ
  eccentricity : ℝ -> ℝ
  precession : ℝ -> ℝ
  insolationCurve : ℝ -> ℝ -> ℝ
  cyclePeriodsIdentified : Prop
  insolationAnomalyComputed : Prop
  orbitalForcingValidated : Prop

structure MilankovitchCyclesEvidence (M : MilankovitchCyclesPackage) where
  cyclePeriodsIdentifiedClosed : M.cyclePeriodsIdentified
  insolationAnomalyComputedClosed : M.insolationAnomalyComputed
  orbitalForcingValidatedClosed : M.orbitalForcingValidated

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  M.cyclePeriodsIdentified ∧ M.insolationAnomalyComputed ∧ M.orbitalForcingValidated

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCyclesPackage)
    (E : MilankovitchCyclesEvidence M) : MilankovitchCyclesClosed M := by
  exact And.intro E.cyclePeriodsIdentifiedClosed
    (And.intro E.insolationAnomalyComputedClosed E.orbitalForcingValidatedClosed)

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
