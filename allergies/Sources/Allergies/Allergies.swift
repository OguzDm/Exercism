enum Allergy: UInt {
    case eggs = 1
    case peanuts = 2
    case shellfish = 4
    case strawberries = 8
    case tomatoes = 16
    case chocolate = 32
    case pollen = 64
    case cats = 128
}
struct Allergies {
    let allergyScore: UInt
    init(_ score: UInt) {
        allergyScore = score
    }
    func hasAllergy(_ allergy: Allergy) -> Bool {
        return allergyScore & allergy.rawValue == allergy.rawValue
    }
}
