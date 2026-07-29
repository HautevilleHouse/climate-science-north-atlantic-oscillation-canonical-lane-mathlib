import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

def bridgeClosed (A : ClimateAdmissibleClass) : Prop :=
  ClimateWitnessClosed A.object

theorem bridge_from_admissible_class (A : ClimateAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
