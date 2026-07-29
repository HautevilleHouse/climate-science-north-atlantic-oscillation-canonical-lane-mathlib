import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceNorthAtlanticOscillationCanonicalLaneLean.BridgeLemmas
import ClimateScienceNorthAtlanticOscillationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

def ConstrainedClimateClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_endgame (A : AdmissibleClass) :
    ConstrainedClimateClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
