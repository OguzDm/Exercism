import Foundation
struct Garden {
    enum Plant: Character {
        case radishes = "R"
        case clover = "C"
        case grass = "G"
        case violets = "V"
    }
    let plants: [String]
    let children: [String]
    static let childrenList = ["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]
    init(_ plants: String, children: [String] = childrenList) {
        self.plants = plants.components(separatedBy: "\n")
        self.children = children.sorted()
    }
    func plantsForChild(_ child: String) -> [Plant] {
        var childsPlants = [Plant]()
        if let childIndex = children.firstIndex(of: child) {
            let index0 = plants[0].index(plants[0].startIndex, offsetBy: childIndex * 2)
            let index1 = plants[1].index(plants[1].startIndex, offsetBy: childIndex * 2)
            let plant1 = plants[0][index0]
            let plant2 = plants[0][plants[0].index(after: index0)]
            let plant3 = plants[1][index1]
            let plant4 = plants[1][plants[1].index(after: index1)]
            
            childsPlants.append(Plant(rawValue: plant1)!)
            childsPlants.append(Plant(rawValue: plant2)!)
            childsPlants.append(Plant(rawValue: plant3)!)
            childsPlants.append(Plant(rawValue: plant4)!)
        }
        return childsPlants
    }
}
