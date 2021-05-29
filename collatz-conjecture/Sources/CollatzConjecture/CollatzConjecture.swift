enum ConjectureError: Error {
    case error
}
class CollatzConjecture {
    
    static func steps(_ number: Int) throws -> Int {
        if number <= 0 {
            throw ConjectureError.error
        }
        var temp = number
        var step = 0
        if temp == 1 {
            return step
        }
        while true {
            if temp % 2 == 0 {
                temp /= 2
                step += 1
                if temp == 1 {
                    break
                }
               
            }
            else {
                temp *= 3
                temp += 1
                step += 1
            }
        }
        return step
    }
}
