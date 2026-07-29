import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure GlycosylationPathwayPackage {M : PrimitiveCisternalMembrane}
    {V : PrimitiveVesicularTransport} {E : PrimitiveGlycosylationEnzyme} where
  mannoseTrimming : Prop
  nAcetylglucosamineTransfer : Prop
  galactoseAddition : Prop
  sialicAcidCapping : Prop

structure GlycosylationPathwayEvidence {M : PrimitiveCisternalMembrane}
    {V : PrimitiveVesicularTransport} {E : PrimitiveGlycosylationEnzyme}
    (P : GlycosylationPathwayPackage M V E) where
  mannoseTrimmingClosed : P.mannoseTrimming
  nAcetylglucosamineTransferClosed : P.nAcetylglucosamineTransfer
  galactoseAdditionClosed : P.galactoseAddition
  sialicAcidCappingClosed : P.sialicAcidCapping

def GlycosylationPathwayClosed {M : PrimitiveCisternalMembrane}
    {V : PrimitiveVesicularTransport} {E : PrimitiveGlycosylationEnzyme}
    (P : GlycosylationPathwayPackage M V E) : Prop :=
  P.mannoseTrimming ∧ P.nAcetylglucosamineTransfer ∧
  P.galactoseAddition ∧ P.sialicAcidCapping

theorem glycosylation_pathway_closed_from_evidence
    {M : PrimitiveCisternalMembrane} {V : PrimitiveVesicularTransport}
    {E : PrimitiveGlycosylationEnzyme} (P : GlycosylationPathwayPackage M V E)
    (Ev : GlycosylationPathwayEvidence P) : GlycosylationPathwayClosed P := by
  exact And.intro Ev.mannoseTrimmingClosed
    (And.intro Ev.nAcetylglucosamineTransferClosed
      (And.intro Ev.galactoseAdditionClosed Ev.sialicAcidCappingClosed))

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse