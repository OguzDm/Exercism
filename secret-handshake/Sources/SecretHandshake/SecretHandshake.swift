struct SecretHandshake {
    let commands: [String]
    init(_ secretCode: Int ) {
        var commands: [String] = []
        if secretCode & 1 != 0 { commands.append("wink") }
        if secretCode & 2 != 0 { commands.append("double blink") }
        if secretCode & 4 != 0 { commands.append("close your eyes") }
        if secretCode & 8 != 0 { commands.append("jump") }
        if secretCode & 16 != 0 { commands.reverse() }
        self.commands = commands
    }
}
