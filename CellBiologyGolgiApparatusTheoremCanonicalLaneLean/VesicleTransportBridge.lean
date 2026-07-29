import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

def bridgeClosed (A : GolgiAdmissibleClass) : Prop :=
  A.object.trafficMapped

theorem bridge_from_admissible_class (A : GolgiAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.trafficMapped

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse