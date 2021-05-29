class Hamming {
    
    static func compute(_ first: String,against: String) -> Int? {
        
        if first.count != against.count {
            return nil
        }
        
        var firstArray = [String]()
        var secondArray = [String]()
        var count = 0
        
        firstArray.append(contentsOf: first.map {String($0)})
        secondArray.append(contentsOf: against.map {String($0)})
        
        for i in 0..<secondArray.count {
            if firstArray[i] != secondArray[i] {
                count += 1
            }
        }
        return count
    }
}
