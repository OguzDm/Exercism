import Foundation

func isValid(_ input: String) -> Bool {
    let value = input.replacingOccurrences(of: "-", with: "")
    guard value.count == 10,
        value.last?.isNumber == true || value.last == "X",
        value.dropLast().filter({ $0.isNumber }).count == 9 else { return false }
    var result = 0
    for (index, character) in value.enumerated().reversed() {
        result += (index + 1) * (character.hexDigitValue ?? 10)
    }
    return result % 11 == 0
}
