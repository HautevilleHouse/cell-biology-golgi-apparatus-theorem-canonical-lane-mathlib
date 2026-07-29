import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure VesicularTransportProofPackage where
  coatProteinRecruitment : Prop
  vesicleBudding : Prop
  vesicleFusion : Prop
  receptorMediatedCargo : Prop
  rabGtpaseRegulation : Prop
  snarePairingSpecificity : Prop

structure VesicularTransportProofEvidence (V : VesicularTransportProofPackage) where
  coatProteinRecruitmentClosed : V.coatProteinRecruitment
  vesicleBuddingClosed : V.vesicleBudding
  vesicleFusionClosed : V.vesicleFusion
  receptorMediatedCargoClosed : V.receptorMediatedCargo
  rabGtpaseRegulationClosed : V.rabGtpaseRegulation
  snarePairingSpecificityClosed : V.snarePairingSpecificity

def VesicularTransportProofClosed (V : VesicularTransportProofPackage) : Prop :=
  V.coatProteinRecruitment ∧ V.vesicleBudding ∧ V.vesicleFusion ∧
  V.receptorMediatedCargo ∧ V.rabGtpaseRegulation ∧ V.snarePairingSpecificity

theorem vesicular_transport_proof_closed_from_evidence
    (V : VesicularTransportProofPackage) (E : VesicularTransportProofEvidence V) :
    VesicularTransportProofClosed V := by
  exact And.intro E.coatProteinRecruitmentClosed
    (And.intro E.vesicleBuddingClosed
      (And.intro E.vesicleFusionClosed
        (And.intro E.receptorMediatedCargoClosed
          (And.intro E.rabGtpaseRegulationClosed E.snarePairingSpecificityClosed))))

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse