import Foundation
class DNA {
    var strand: String
  
    let nucleotides: Set<String.Element> = ["T", "A", "C", "G"]
    func counts() -> [String:Int]? {
        var nucleotidDict = ["T":0,"A":0,"C":0,"G":0]
        for char in strand {
            switch char {
            case "T":
                nucleotidDict["T"]! += 1
            case "A":
                nucleotidDict["A"]! += 1
            case "C":
                nucleotidDict["C"]! += 1
            case "G":
                nucleotidDict["G"]! += 1
            default:
                return nil
            }
        }
        
        return nucleotidDict
        
    }
    
    func count(_ char:Character) -> Int {
        var count = 0
        for chars in strand {
            if chars == char {
                count += 1
            }
        }
        return count
    }
    init?(strand: String) {
        self.strand = strand
        let validStrand = strand.allSatisfy { nucleotides.contains($0) }
        guard validStrand else { return nil }
    }
}
