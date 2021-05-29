class Queens {
    enum InitError: Error {
        case incorrectNumberOfCoordinates
        case sameSpace
        case invalidCoordinates
    }
    var white: [Int]
    var black: [Int]
    init(white: [Int] = [0, 3], black: [Int] = [7, 3]) throws {
        guard !(white.contains { $0 > 7 || $0 < 0 } ||
                    black.contains { $0 > 7 || $0 < 0 })
                  else {
                  throw InitError.invalidCoordinates
              }
        if white.count != 2 || black.count != 2 {
            throw InitError.incorrectNumberOfCoordinates
        }
        if white == black {
            throw InitError.sameSpace
        }
        self.white = white
        self.black = black
    }
    var canAttack: Bool {
           return white[0] == black[0]
               || white[1] == black[1]
               || abs(white[0] - black[0]) == abs(white[1] - black[1])
       }
    var description: String {
        var table = ""
        for i in 0...7 {
            for j in 0...7 {
                if white[0] == i && white [1] == j {
                    table.append("W ")
                }
                else if black[0] == i && black[1] == j {
                    table.append("B ")
                }
                else {
                    table.append("_")
                    if j != 7 {
                        table.append(" ")
                    }
                }
            }
            if i != 7 {
                table.append("\n")
            } else {
                
            }
        }
        return table
    }
}
