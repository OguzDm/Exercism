class Squares {
    
    var num: Int
    
    var squareOfSum: Int {
        var index = 1
        var sum = 0
        while(index <= num) {
            sum += index
            index += 1
        }
        
        return sum * sum
    }
    
    var sumOfSquares: Int {
        var index = 0
        var sum = 0
        while(index <= num) {
            sum += (index * index)
            index += 1
        }
        
        return sum
    }

    var differenceOfSquares: Int {

        let sumOfSquare = sumOfSquares
        let squareOfSums = squareOfSum
        
        return squareOfSums - sumOfSquare
    }
    
    init(_ num: Int) {
        self.num = num
    }
}
