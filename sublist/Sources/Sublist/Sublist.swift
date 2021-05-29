enum Compare{
    case equal
    case sublist
    case superlist
    case unequal
}

func classifier(listOne:[Int], listTwo: [Int]) -> Compare{
    if listOne.isEmpty && listTwo.isEmpty {
        return .equal
    }
    if listOne.isEmpty {
        return .sublist
    }
    if listOne == listTwo.reversed() {
        return .unequal
    }
    if listTwo.isEmpty {
        return .superlist
    }
    if listOne == listTwo{
        return .equal
    }
    if listTwo.contains(array: listOne) {
        return .sublist
    }
    if listOne.contains(array: listTwo) {
        return .superlist
    }
    return .unequal
}


extension Array where Element: Equatable {

    func contains(array: [Element]) -> Bool {

        for index in self.startIndex..<self.count where index <= self.count - array.count {
            if Array(self[index..<index + array.count]) == array {
                return true
            }
        }

        return false
    }
}
