import Foundation
class Grains {
    
    enum GrainsError : Error{
        case inputTooHigh(message: String)
        case inputTooLow(message: String)
    }
    static func square(_ num: Int) throws -> UInt{
        
        if num > 64 {
            throw GrainsError.inputTooHigh(message: "Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        
        if num < 1 {
            
            throw GrainsError.inputTooLow(message: "Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        
        let grain = NSDecimalNumber(decimal: pow(2.0, num - 1))
        
        return UInt(truncating: grain)
        
    }
    
    static var total : UInt {
        var sum : UInt = 0
        for i in 0...64 {
            
            sum += UInt(truncating: NSDecimalNumber(decimal: pow(2.0, i)))
        }
        return sum
    }
    
    
}
