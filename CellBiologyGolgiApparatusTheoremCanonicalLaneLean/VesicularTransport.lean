import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure VesicularTransportPackage {M : PrimitiveCisternalMembrane}
    (V : PrimitiveVesicularTransport) where
  coatProteinRecruitment : Prop
  cargoLoading : Prop
  vesicleBudding : Prop
  vesicleFusion : Prop

structure VesicularTransportEvidence {M : PrimitiveCisternalMembrane}
    {V : PrimitiveVesicularTransport} (T : VesicularTransportPackage V) where
  coatProteinRecruitmentClosed : T.coatProteinRecruitment
  cargoLoadingClosed : T.cargoLoading
  vesicleBuddingClosed : T.vesicleBudding
  vesicleFusionClosed : T.vesicleFusion

def VesicularTransportClosed {M : PrimitiveCisternalMembrane}
    {V : PrimitiveVesicularTransport} (T : VesicularTransportPackage V) : Prop :=
  T.coatProteinRecruitment ∧ T.cargoLoading ∧
  T.vesicleBudding ∧ T.vesicleFusion

theorem vesicular_transport_closed_from_evidence
    {M : PrimitiveCisternalMembrane} {V : PrimitiveVesicularTransport}
    (T : VesicularTransportPackage V) (Ev : VesicularTransportEvidence T) :
    VesicularTransportClosed T := by
  exact And.intro Ev.coatProteinRecruitmentClosed
    (And.intro Ev.cargoLoadingClosed
      (And.intro Ev.vesicleBuddingClosed Ev.vesicleFusionClosed))

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse