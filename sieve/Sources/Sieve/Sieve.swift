import Foundation

extension Int {
    func isPrime() -> Bool {
        if self == 2 || self == 3 {
            return true
        }
        let rootOfNumber = Int(sqrt(Double(self)))
        for i in 2...rootOfNumber {
            if self % i == 0 {
                return false
            }
        }
        return true
    }
}

class Sieve {
    var number: Int
    
    init(_ number: Int) {
        self.number = number
    }
    
    var primes: [Int] {
        var primes = [Int]()
        for i in 2...number {
            if i.isPrime() {
                primes.append(i)
            }
        }
        return primes
    }
}
