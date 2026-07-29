import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure GolgiTransportPDEPackage where
  timeParameter : Type u
  concentrationAt : timeParameter → Type v
  initialConcentrationMatches : Prop
  diffusionAdvectionEquation : Prop
  golgiCompartmentTransport : Prop

structure GolgiTransportPDEEvidence (F : GolgiTransportPDEPackage) where
  initialConcentrationMatchesClosed : F.initialConcentrationMatches
  diffusionAdvectionEquationClosed : F.diffusionAdvectionEquation
  golgiCompartmentTransportClosed : F.golgiCompartmentTransport

def GolgiTransportPDEClosed (F : GolgiTransportPDEPackage) : Prop :=
  F.initialConcentrationMatches ∧ F.diffusionAdvectionEquation ∧ F.golgiCompartmentTransport

theorem golgi_transport_pde_closed_from_evidence
    (F : GolgiTransportPDEPackage) (E : GolgiTransportPDEEvidence F) :
    GolgiTransportPDEClosed F := by
  exact And.intro E.initialConcentrationMatchesClosed
    (And.intro E.diffusionAdvectionEquationClosed E.golgiCompartmentTransportClosed)

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse