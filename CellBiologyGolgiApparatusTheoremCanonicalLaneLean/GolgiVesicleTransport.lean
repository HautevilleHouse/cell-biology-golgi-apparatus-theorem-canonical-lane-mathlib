import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure GolgiVesicleTransportPackage where
  vesicleFormation : Prop
  cisternalProgression : Prop
  retrogradeTransport : Prop
  ladTransport : Prop

structure GolgiVesicleTransportEvidence (P : GolgiVesicleTransportPackage) where
  vesicleFormationClosed : P.vesicleFormation
  cisternalProgressionClosed : P.cisternalProgression
  retrogradeTransportClosed : P.retrogradeTransport
  ladTransportClosed : P.ladTransport

def GolgiVesicleTransportClosed (P : GolgiVesicleTransportPackage) : Prop :=
  P.vesicleFormation ∧ P.cisternalProgression ∧ P.retrogradeTransport ∧ P.ladTransport

theorem golgi_vesicle_transport_closed_from_evidence (P : GolgiVesicleTransportPackage)
    (E : GolgiVesicleTransportEvidence P) : GolgiVesicleTransportClosed P := by
  exact And.intro E.vesicleFormationClosed
    (And.intro E.cisternalProgressionClosed
      (And.intro E.retrogradeTransportClosed E.ladTransportClosed))

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse