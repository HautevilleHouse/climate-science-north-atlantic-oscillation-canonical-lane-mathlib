import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure NAOIndexPackage where
  seaLevelPressure : Type u
  naoIndex : Type v
  normalizationMethod : Prop
  stationPairDefined : Prop
  seasonalVariability : Prop
  normalizationMethodTerm : normalizationMethod
  stationPairDefinedTerm : stationPairDefined
  seasonalVariabilityTerm : seasonalVariability

structure NAOIndexEvidence (N : NAOIndexPackage) where
  normalizationMethodClosed : N.normalizationMethod
  stationPairDefinedClosed : N.stationPairDefined
  seasonalVariabilityClosed : N.seasonalVariability

def NAOIndexClosed (N : NAOIndexPackage) : Prop :=
  N.normalizationMethod ∧ N.stationPairDefined ∧ N.seasonalVariability

theorem nao_index_closed_from_evidence (N : NAOIndexPackage)
    (Ev : NAOIndexEvidence N) : NAOIndexClosed N := by
  exact And.intro Ev.normalizationMethodClosed
    (And.intro Ev.stationPairDefinedClosed Ev.seasonalVariabilityClosed)

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
