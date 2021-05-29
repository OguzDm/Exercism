struct Robot {
    var name = String()
    var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    func nameSetter() -> String {
        return "\(chars.randomElement()!)"
            + "\(chars.randomElement()!)"
            + "\(((0...9).randomElement())!)"
            + "\(((0...9).randomElement())!)"
            + "\(((0...9).randomElement())!)"
    }
    mutating func resetName(){
        self.name = nameSetter()
    }
    init() {
        name = nameSetter()
    }
}
