import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusTheoremCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "a1b2c3d4e5f6...", present := true }]

def reviewerChainSteps : List ReviewerChainStep :=
  [{ index := 1, label := "CG1" }]

def reviewerClosureGates : List ReviewerClosureGate :=
  [{ gate := "CG_G1", constant := "transport_efficiency" }]

end CellBiologyGolgiApparatusTheoremCanonicalLaneLean
end HautevilleHouse