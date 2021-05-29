func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    let divisors = inMultiples.filter { $0 > 0 }
    let uniqueMultipes = divisors.reduce(Set<Int>()) { accumulator, divisor in
        accumulator.union(Set(stride(from: divisor, to: limit, by: divisor)))
    }
    return uniqueMultipes.reduce(0, +)
}
