import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure GolgiEnzymeSortingPackage {M : PrimitiveCisternalMembrane}
    {V : PrimitiveVesicularTransport} {E : PrimitiveGlycosylationEnzyme}
    (G : GlycosylationPathwayPackage M V E) where
  retentionSignalRecognition : Prop
  retrievalSignalRecognition : Prop
  steadyStateLocalization : Prop
  retrogradeTransport : Prop

structure GolgiEnzymeSortingEvidence {M : PrimitiveCisternalMembrane}
    {V : PrimitiveVesicularTransport} {E : PrimitiveGlycosylationEnzyme}
    {G : GlycosylationPathwayPackage M V E} (S : GolgiEnzymeSortingPackage G) where
  retentionSignalRecognitionClosed : S.retentionSignalRecognition
  retrievalSignalRecognitionClosed : S.retrievalSignalRecognition
  steadyStateLocalizationClosed : S.steadyStateLocalization
  retrogradeTransportClosed : S.retrogradeTransport

def GolgiEnzymeSortingClosed {M : PrimitiveCisternalMembrane}
    {V : PrimitiveVesicularTransport} {E : PrimitiveGlycosylationEnzyme}
    {G : GlycosylationPathwayPackage M V E} (S : GolgiEnzymeSortingPackage G) : Prop :=
  S.retentionSignalRecognition ∧ S.retrievalSignalRecognition ∧
  S.steadyStateLocalization ∧ S.retrogradeTransport

theorem golgi_enzyme_sorting_closed_from_evidence
    {M : PrimitiveCisternalMembrane} {V : PrimitiveVesicularTransport}
    {E : PrimitiveGlycosylationEnzyme} {G : GlycosylationPathwayPackage M V E}
    (S : GolgiEnzymeSortingPackage G) (Ev : GolgiEnzymeSortingEvidence S) :
    GolgiEnzymeSortingClosed S := by
  exact And.intro Ev.retentionSignalRecognitionClosed
    (And.intro Ev.retrievalSignalRecognitionClosed
      (And.intro Ev.steadyStateLocalizationClosed Ev.retrogradeTransportClosed))

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse