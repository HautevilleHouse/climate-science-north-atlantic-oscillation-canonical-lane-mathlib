import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure OrbitalParameters where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ

structure MilankovitchForcingPackage where
  insolationAnomaly : ℝ → ℝ
  summerInsolationAt65N : ℝ
  precessionIndex : ℝ
  obliquityIndex : ℝ
  eccentricityIndex : ℝ

structure MilankovitchEvidence (M : MilankovitchForcingPackage) where
  insolationComputed : M.insolationAnomaly 1 = 0.045
  summerInsolationClosed : M.summerInsolationAt65N > 0
  precessionIndexClosed : M.precessionIndex ∈ Set.Icc (-0.1) 0.1
  obliquityIndexClosed : M.obliquityIndex ∈ Set.Icc (22.1) (24.5)
  eccentricityIndexClosed : M.eccentricityIndex ∈ Set.Icc (0.0) (0.06)

def MilankovitchForcingClosed (M : MilankovitchForcingPackage) : Prop :=
  M.insolationAnomaly 1 = 0.045 ∧ M.summerInsolationAt65N > 0 ∧
  M.precessionIndex ∈ Set.Icc (-0.1) 0.1 ∧ M.obliquityIndex ∈ Set.Icc (22.1) (24.5) ∧
  M.eccentricityIndex ∈ Set.Icc (0.0) (0.06)

theorem milankovitch_forcing_closed_from_evidence (M : MilankovitchForcingPackage) (E : MilankovitchEvidence M) : MilankovitchForcingClosed M := by
  exact And.intro E.insolationComputed (And.intro E.summerInsolationClosed (And.intro E.precessionIndexClosed (And.intro E.obliquityIndexClosed E.eccentricityIndexClosed)))

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse