import CellBiologyGolgiApparatusTheoremCanonicalLaneLean.BridgeLemmas
import CellBiologyGolgiApparatusTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

def ConstrainedGolgiClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_golgi_endgame (A : AdmissibleClass) : ConstrainedGolgiClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse