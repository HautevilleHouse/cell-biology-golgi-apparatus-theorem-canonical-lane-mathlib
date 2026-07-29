import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure GolgiAdmittedObject where
  vesiclePopulation : String
  transportDirection : String
  residentProteinsIdentified : Prop
  trafficMapped : Prop

structure GolgiAdmissibleClass where
  object : GolgiAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : GolgiAdmissibleClass) : Prop :=
  A.object.trafficMapped ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse