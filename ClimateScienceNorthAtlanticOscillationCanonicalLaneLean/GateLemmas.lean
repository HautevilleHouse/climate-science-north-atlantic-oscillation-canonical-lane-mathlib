import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.northAtlanticOscillationIndexSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
