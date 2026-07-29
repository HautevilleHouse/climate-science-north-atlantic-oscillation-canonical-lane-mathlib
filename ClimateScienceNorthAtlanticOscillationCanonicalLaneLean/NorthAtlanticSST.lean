import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure NorthAtlanticSSTPackage where
  sstGrid : Type u
  tripolePattern : Type v
  decadalVariability : Prop
  coupledOceanAtmosphere : Prop
  sstGridDefined : sstGrid
  tripolePatternDefined : tripolePattern
  decadalVariabilityClosed : decadalVariability
  coupledOceanAtmosphereClosed : coupledOceanAtmosphere

structure NorthAtlanticSSTEvidence (P : NorthAtlanticSSTPackage) where
  decadalVariabilityClosed : P.decadalVariability
  coupledOceanAtmosphereClosed : P.coupledOceanAtmosphere

def NorthAtlanticSSTClosed (P : NorthAtlanticSSTPackage) : Prop :=
  P.decadalVariability ∧ P.coupledOceanAtmosphere

theorem north_atlantic_sst_closed_from_evidence
    (P : NorthAtlanticSSTPackage)
    (E : NorthAtlanticSSTEvidence P) :
    NorthAtlanticSSTClosed P := by
  exact And.intro E.decadalVariabilityClosed E.coupledOceanAtmosphereClosed

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
