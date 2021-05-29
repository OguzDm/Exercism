extension Array where Element == String {
    func recite() -> String {
        var proverb = ""
        if self.isEmpty {
            return proverb
        }
        let andAll = "And all for the want of a \(String(self.first!))."
        for i in 1 ..< self.count {
            proverb += "For want of a \(self[i - 1]) the \(self[i]) was lost.\n"
        }
        proverb += andAll
        return proverb
    }
}
