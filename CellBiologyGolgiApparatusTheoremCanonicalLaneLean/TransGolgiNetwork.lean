import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure TransGolgiNetworkPackage where
  cargoPackaging : Prop
  clathrinVesicleFormation : Prop
  secretoryVesicleSorting : Prop
  lysosomalTargeting : Prop
  exocytosisRegulation : Prop

structure TransGolgiNetworkEvidence (T : TransGolgiNetworkPackage) where
  cargoPackagingClosed : T.cargoPackaging
  clathrinVesicleFormationClosed : T.clathrinVesicleFormation
  secretoryVesicleSortingClosed : T.secretoryVesicleSorting
  lysosomalTargetingClosed : T.lysosomalTargeting
  exocytosisRegulationClosed : T.exocytosisRegulation

def TransGolgiNetworkClosed (T : TransGolgiNetworkPackage) : Prop :=
  T.cargoPackaging ∧ T.clathrinVesicleFormation ∧ T.secretoryVesicleSorting ∧ T.lysosomalTargeting ∧ T.exocytosisRegulation

theorem trans_golgi_network_closed_from_evidence (T : TransGolgiNetworkPackage)
    (E : TransGolgiNetworkEvidence T) : TransGolgiNetworkClosed T := by
  exact And.intro E.cargoPackagingClosed
    (And.intro E.clathrinVesicleFormationClosed
      (And.intro E.secretoryVesicleSortingClosed
        (And.intro E.lysosomalTargetingClosed E.exocytosisRegulationClosed)))

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse