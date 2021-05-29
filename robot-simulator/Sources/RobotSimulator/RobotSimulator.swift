struct SimulatedRobot {
    enum Bearing{
        case north
        case east
        case south
        case west
    }
    enum Instruction: Character{
        case turnLeft = "L"
        case turnRight = "R"
        case advance = "A"
    }
    var bearing: Bearing
    var coordinates: [Int]
    
    init() {
        self.bearing = .north
        self.coordinates = [0, 0]
    }
    
    mutating func orient(_ bearing: Bearing){
        self.bearing = bearing
    }
    mutating func turnRight() {
          switch bearing {
          case .north:
              self.bearing = .east
          case .east:
              self.bearing = .south
          case .south:
              self.bearing = .west
          case .west:
              self.bearing = .north
          }
      }
    mutating func turnLeft() {
          switch bearing {
          case .north:
              self.bearing = .west
          case .east:
              self.bearing = .north
          case .south:
              self.bearing = .east
          case .west:
              self.bearing = .south
          
          }
      }
    mutating func at(x: Int, y: Int) {
           self.coordinates = [x, y]
       }
    mutating func advance() {
         switch bearing {
         case .east:
             self.coordinates[0] += 1
         case .west:
             self.coordinates[0] -= 1
         case .north:
             self.coordinates[1] += 1
         case .south:
             self.coordinates[1] -= 1
         }
     }
    func instructions(_ text: String) -> [Instruction] {
        return text.compactMap { Instruction.init(rawValue: $0) }
    }
    
    mutating func place(x: Int, y: Int, direction: Bearing) {
        self.coordinates = [x, y]
        self.bearing = direction
    }
    mutating func evaluate(_ instructionText: String) {
        let instructionsArray = instructions(instructionText)
        for instruction in instructionsArray {
            switch instruction {
            case .turnLeft:
                turnLeft()
            case .turnRight:
                turnRight()
            case .advance:
                advance()
            }
        }
    }
}
