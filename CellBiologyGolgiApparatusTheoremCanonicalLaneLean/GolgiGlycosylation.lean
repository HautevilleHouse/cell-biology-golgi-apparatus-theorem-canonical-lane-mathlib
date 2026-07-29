import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure GolgiGlycosylationPackage where
  nLinkedGlycosylation : Prop
  oLinkedGlycosylation : Prop
  glycanProcessing : Prop
  glycosyltransferaseLocalization : Prop

structure GolgiGlycosylationEvidence (G : GolgiGlycosylationPackage) where
  nLinkedGlycosylationClosed : G.nLinkedGlycosylation
  oLinkedGlycosylationClosed : G.oLinkedGlycosylation
  glycanProcessingClosed : G.glycanProcessing
  glycosyltransferaseLocalizationClosed : G.glycosyltransferaseLocalization

def GolgiGlycosylationClosed (G : GolgiGlycosylationPackage) : Prop :=
  G.nLinkedGlycosylation ∧ G.oLinkedGlycosylation ∧ G.glycanProcessing ∧ G.glycosyltransferaseLocalization

theorem golgi_glycosylation_closed_from_evidence (G : GolgiGlycosylationPackage)
    (E : GolgiGlycosylationEvidence G) : GolgiGlycosylationClosed G := by
  exact And.intro E.nLinkedGlycosylationClosed
    (And.intro E.oLinkedGlycosylationClosed
      (And.intro E.glycanProcessingClosed E.glycosyltransferaseLocalizationClosed))

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse