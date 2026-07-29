import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure GolgiAdmissibleObject where
  carrier : Type
  topology : TopologicalSpace carrier
  membraneBoundCompartment : Prop
  cisternalStack : Prop
  vesicularTransport : Prop
  conclusion : vesicularTransport

structure AdmissibleClass where
  object : GolgiAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GolgiWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse