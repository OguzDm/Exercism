import Foundation
class Bob {
    class func hey(_ input: String) -> String {
        let trimmedString = input.trimmingCharacters(in: .whitespaces)
        if (trimmedString.uppercased() == trimmedString
            && input.rangeOfCharacter(from: CharacterSet.letters) != nil)
        {
            return "Whoa, chill out!"
        }
        else if (trimmedString.isEmpty)
        {
            return "Fine. Be that way!"
        }
        else if (trimmedString.last! == "?")
        {
            return "Sure."
        }
        
        return "Whatever."
    }
}
