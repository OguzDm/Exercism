class Scrabble {
    var word: String
      init(_ word: String?) {
          self.word = word ?? ""
      }
    var score: Int {
        var score = 0
        for char in word.uppercased() {
            switch char {
            case "A","E","I","O","U","L","N","R","S","T":
                score += 1
            case "D","G":
                score += 2
            case "B","C","M","P":
                score += 3
            case "F","H","V","W","Y":
                score += 4
            case "K":
                score += 5
            case "J","X":
                score += 8
            case "Q","Z":
                score += 10
            default:
                score += 0
            }
        }
        return score
    }
    static func score(_ word: String) -> Int {
           return Scrabble(word).score
       }
}
