struct ListOps {
    static func append<T>(_ array1: [T], _ array2: [T]) -> [T] {
         var appendedArray = array1
         for i in array2 {
             appendedArray.append(i)
         }
         return appendedArray
     }
    static func concat<T>(_ arrays: [T]...) -> [T] {
        var concat = [T]()
        for array in arrays {
            concat = append(concat, array)
        }
        return concat
    }
    static func filter<T>(_ array: [T], isIncluded: ((T) -> Bool)) -> [T] {
        var filteredArray = [T]()
        for i in array {
            if isIncluded(i) == true {
                filteredArray.append(i)
            }
        }
        return filteredArray
    }
    static func length<T>(_ array: [T]) -> Int {
         var count = 0
         for _ in array {
             count += 1
         }
         return count
     }
    static func map<T>(_ array: [T], transform: ((T) -> T)) -> [T] {
         var mappedArray = [T]()
         mappedArray.reserveCapacity(length(array))
         for i in array {
             mappedArray.append(transform(i))
         }
         return mappedArray
     }
    static func foldLeft<T>(_ array: [T], accumulated: T, combine: ((T, T) -> T)) -> T {
        var result = accumulated
        for i in array {
            result = combine(result, i)
        }
        return result
    }
    
    static func foldRight<T>(_ array: [T], accumulated: T, combine: ((T, T) -> T)) -> T {
        var result = accumulated
        for i in array.reversed() {
            result = combine(i, result)
        }
        return result
    }
    static func reverse<T>(_ array: [T]) -> [T] {
        var result = [T]()
        for i in array {
            result.insert(i, at: 0)
        }
        return result
    }
    
}
