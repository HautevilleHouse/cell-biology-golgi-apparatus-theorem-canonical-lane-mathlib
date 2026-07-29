import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure PrimitiveCisternalMembrane where
  membraneType : Type u
  lipidComposition : Type v
  lumenalContent : Type w
  cisternalIdentityEstablished : Prop
  transportVesicleBudding : Prop
  cisternalIdentityEstablishedTerm : cisternalIdentityEstablished
  transportVesicleBuddingTerm : transportVesicleBudding

structure PrimitiveVesicularTransport where
  cargoMolecule : Type u
  vesicleCoat : Type v
  directionVector : Type w
  cargoRecruitmentActive : Prop
  directionalMovement : Prop
  cargoRecruitmentActiveTerm : cargoRecruitmentActive
  directionalMovementTerm : directionalMovement

structure PrimitiveGlycosylationEnzyme where
  enzymeClass : Type u
  catalyticDomain : Type v
  localizationSignal : Type w
  enzymeActive : Prop
  substrateSpecificity : Prop
  productFormation : Prop
  enzymeActiveTerm : enzymeActive
  substrateSpecificityTerm : substrateSpecificity
  productFormationTerm : productFormation

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse