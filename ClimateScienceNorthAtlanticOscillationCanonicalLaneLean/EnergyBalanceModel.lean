import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceNorthAtlanticOscillationCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarInsolation : Type u
  albedo : Type v
  outgoingLongwaveRadiation : Type w
  heatCapacity : Type x
  temperatureAnomaly : Type y
  radiativeForcingEquation : Prop
  surfaceEnergyBalance : Prop
  radiativeForcingEquationTerm : radiativeForcingEquation
  surfaceEnergyBalanceTerm : surfaceEnergyBalance

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  radiativeForcingEquationClosed : E.radiativeForcingEquation
  surfaceEnergyBalanceClosed : E.surfaceEnergyBalance

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.radiativeForcingEquation ∧ E.surfaceEnergyBalance

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  exact And.intro Ev.radiativeForcingEquationClosed Ev.surfaceEnergyBalanceClosed

end ClimateScienceNorthAtlanticOscillationCanonicalLaneLean
end HautevilleHouse
