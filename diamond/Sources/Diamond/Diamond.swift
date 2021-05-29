import Foundation

class Diamond {
    static func makeDiamond(letter: Character) -> [String] {
        let alphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        guard let letterIndex = alphabet.firstIndex(of: letter) else {
            return [""]
        }
        var diamond = [String]()
        for i in 0...letterIndex {
            var newLine = Array(repeating: " ", count: letterIndex*2+1)
            newLine[letterIndex-i] = String(alphabet[i])
            newLine[letterIndex+i] = String(alphabet[i])
            diamond.append(String(describing: newLine.joined()))
        }
        diamond += diamond.dropLast().reversed()
        return diamond
    }
}
