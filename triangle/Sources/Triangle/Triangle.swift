class Triangle {
    enum TriangleKind: String {
         case ErrorKind = "ErrorKind"
         case Isosceles = "Isosceles"
         case Equilateral = "Equilateral"
         case Scalene = "Scalene"
     }
    var first: Double
    var second: Double
    var third: Double
    init(_ first: Double,_ second: Double,_ third: Double) {
        self.first = first
        self.second = second
        self.third = third
    }
    var kind: String {
        if first + second <= third {
            return TriangleKind.ErrorKind.rawValue
        }
        if second + third <= first {
            return TriangleKind.ErrorKind.rawValue
        }
        if first + third <= second {
            return TriangleKind.ErrorKind.rawValue
        }
        let controlSet = Set([first,second,third]).sorted()
        if controlSet[0] > 0 {
            switch controlSet.count {
            case 1:
                return TriangleKind.Equilateral.rawValue
            case 2:
                return TriangleKind.Isosceles.rawValue
            default:
                return TriangleKind.Scalene.rawValue
            }
        }
        else{
            return TriangleKind.ErrorKind.rawValue
        }
    }
}
