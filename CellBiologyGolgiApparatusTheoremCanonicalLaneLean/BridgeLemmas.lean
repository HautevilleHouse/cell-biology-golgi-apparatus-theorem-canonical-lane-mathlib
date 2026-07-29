import canonicalLaneMathlib.AdmissibleClass
import CellBiologyGolgiApparatusTheoremCanonicalLaneLean.RibbonContext

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GolgiWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  golgi_witness_closed_from_object A.object

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse