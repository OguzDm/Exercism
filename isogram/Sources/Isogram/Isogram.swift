class Isogram {
    static func isIsogram(_ string: String) -> Bool{
        let lowerCasedString = string.lowercased()
        var frequencies = [Int](repeating: 0, count: 26)
        for char in lowerCasedString.unicodeScalars {
            switch char {
            case "a"..."z":
                frequencies[Int(char.value - UnicodeScalar("a").value)] += 1
            default:
                break
            }
        }
        frequencies.sort(by: >)
        if frequencies[0] > 1 {
            return false
        }
        else {
            return true
        }
    }
}
