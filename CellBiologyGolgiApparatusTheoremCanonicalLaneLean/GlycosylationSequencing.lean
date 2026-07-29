import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure GlycosylationSequencingPackage where
  sequentialGlycosylation : Prop
  mannosidaseI : Prop
  glcnacTransferase : Prop
  mannosidaseII : Prop
  galactosyltransferase : Prop
  sialyltransferase : Prop
  ribbonContext : AdmissibleClass

structure GlycosylationSequencingEvidence where
  sequentialGlycosylationClosed : Bool
  mannosidaseIClosed : Bool
  glcnacTransferaseClosed : Bool
  mannosidaseIIClosed : Bool
  galactosyltransferaseClosed : Bool
  sialyltransferaseClosed : Bool

def GlycosylationSequencingClosed (P : GlycosylationSequencingPackage) : Prop :=
  P.sequentialGlycosylation ∧ P.mannosidaseI ∧ P.galactosyltransferase ∧ P.sialyltransferase

theorem glycosylation_sequencing_closed (P : GlycosylationSequencingPackage) (E : GlycosylationSequencingEvidence) : GlycosylationSequencingClosed P :=
  by
    refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
    · exact E.sequentialGlycosylationClosed
    · exact E.mannosidaseIClosed
    · exact E.galactosyltransferaseClosed
    · exact E.sialyltransferaseClosed

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse