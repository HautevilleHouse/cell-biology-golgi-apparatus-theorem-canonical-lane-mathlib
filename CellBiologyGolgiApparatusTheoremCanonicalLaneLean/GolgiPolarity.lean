import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure GolgiPolarityPackage where
  cisTransAxis : Prop
  enzymeGradient : Prop
  membraneLipidAsymmetry : Prop
  microtubuleOrganization : Prop
  postGolgiTrafficking : Prop

structure GolgiPolarityEvidence (G : GolgiPolarityPackage) where
  cisTransAxisClosed : G.cisTransAxis
  enzymeGradientClosed : G.enzymeGradient
  membraneLipidAsymmetryClosed : G.membraneLipidAsymmetry
  microtubuleOrganizationClosed : G.microtubuleOrganization
  postGolgiTraffickingClosed : G.postGolgiTrafficking

def GolgiPolarityClosed (G : GolgiPolarityPackage) : Prop :=
  G.cisTransAxis ∧ G.enzymeGradient ∧ G.membraneLipidAsymmetry ∧ G.microtubuleOrganization ∧ G.postGolgiTrafficking

theorem golgi_polarity_closed_from_evidence (G : GolgiPolarityPackage)
    (E : GolgiPolarityEvidence G) : GolgiPolarityClosed G := by
  exact And.intro E.cisTransAxisClosed
    (And.intro E.enzymeGradientClosed
      (And.intro E.membraneLipidAsymmetryClosed
        (And.intro E.microtubuleOrganizationClosed E.postGolgiTraffickingClosed)))

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse