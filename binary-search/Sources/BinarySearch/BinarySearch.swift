enum BinarySearchError: Error {
    case unsorted
}
class BinarySearch {
        
    var list: [Int]
    
    init(_ list: [Int]) throws {
        guard list == list.sorted(by: <) else {
            throw BinarySearchError.unsorted
        }
        self.list = list
    }
    var middle : Int {
        return list.middleIndex
    }
    
    func searchFor(_ number: Int) -> Int? {
        var firstIndex = 0
        var listSize = list.count - 1
        
        while firstIndex <= listSize {
            let middle = firstIndex + (listSize - firstIndex) / 2
            
            if list[middle] == number {
                return middle
            } else if list[middle] < number {
                firstIndex = middle + 1
            } else {
                listSize = middle - 1
            }
        }
        return nil
    }
}
extension Array {

    var middleIndex: Int {
        return (self.isEmpty ? self.startIndex : self.count - 1) / 2
    }
}
