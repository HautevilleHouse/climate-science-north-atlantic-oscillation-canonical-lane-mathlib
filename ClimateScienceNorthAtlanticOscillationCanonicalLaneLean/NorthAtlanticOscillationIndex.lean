import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure NorthAtlanticOscillationIndexPackage where
  pressureDifference : ℝ -> ℝ
  indexTimeSeries : ℝ -> ℝ
  standardDeviation : ℝ
  meanValue : ℝ
  positivePhaseThreshold : ℝ
  negativePhaseThreshold : ℝ
  dataRecorded : Prop
  indexComputed : Prop
  phasesClassified : Prop

structure NorthAtlanticOscillationIndexEvidence (I : NorthAtlanticOscillationIndexPackage) where
  dataRecordedClosed : I.dataRecorded
  indexComputedClosed : I.indexComputed
  phasesClassifiedClosed : I.phasesClassified

def NorthAtlanticOscillationIndexClosed (I : NorthAtlanticOscillationIndexPackage) : Prop :=
  I.dataRecorded ∧ I.indexComputed ∧ I.phasesClassified

theorem north_atlantic_oscillation_index_closed_from_evidence
    (I : NorthAtlanticOscillationIndexPackage)
    (E : NorthAtlanticOscillationIndexEvidence I) : NorthAtlanticOscillationIndexClosed I := by
  exact And.intro E.dataRecordedClosed
    (And.intro E.indexComputedClosed E.phasesClassifiedClosed)

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
