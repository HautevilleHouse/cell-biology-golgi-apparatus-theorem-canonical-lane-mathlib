import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure CisGolgiNetworkPackage where
  erExitSorting : Prop
  copiiVesicleFormation : Prop
  cargoRecruitment : Prop
  vesicleTethering : Prop
  cisternalEntry : Prop

structure CisGolgiNetworkEvidence (C : CisGolgiNetworkPackage) where
  erExitSortingClosed : C.erExitSorting
  copiiVesicleFormationClosed : C.copiiVesicleFormation
  cargoRecruitmentClosed : C.cargoRecruitment
  vesicleTetheringClosed : C.vesicleTethering
  cisternalEntryClosed : C.cisternalEntry

def CisGolgiNetworkClosed (C : CisGolgiNetworkPackage) : Prop :=
  C.erExitSorting ∧ C.copiiVesicleFormation ∧ C.cargoRecruitment ∧ C.vesicleTethering ∧ C.cisternalEntry

theorem cis_golgi_network_closed_from_evidence (C : CisGolgiNetworkPackage)
    (E : CisGolgiNetworkEvidence C) : CisGolgiNetworkClosed C := by
  exact And.intro E.erExitSortingClosed
    (And.intro E.copiiVesicleFormationClosed
      (And.intro E.cargoRecruitmentClosed
        (And.intro E.vesicleTetheringClosed E.cisternalEntryClosed)))

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse