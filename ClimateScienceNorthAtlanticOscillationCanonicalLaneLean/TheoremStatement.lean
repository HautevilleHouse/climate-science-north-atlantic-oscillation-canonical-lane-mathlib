import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure ClimateNorthAtlanticAdmittedObject where
  indexCarrier : Type
  indexTopology : TopologicalSpace indexCarrier
  northAtlanticOscillationIndexDefined : Prop
  climateModelClosed : Prop
  conclusion : northAtlanticOscillationIndexDefined ∧ climateModelClosed

def NAOIndexClosed (O : ClimateNorthAtlanticAdmittedObject) : Prop :=
  O.northAtlanticOscillationIndexDefined ∧ O.climateModelClosed

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
