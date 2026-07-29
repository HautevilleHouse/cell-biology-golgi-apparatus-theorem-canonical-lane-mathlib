import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def golgiProjection : Projection GolgiEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem golgi_projection_idempotent (x : GolgiEndgameState) :
    golgiProjection.toFun (golgiProjection.toFun x) = golgiProjection.toFun x := by
  exact golgiProjection.idempotent x

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse