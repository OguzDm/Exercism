enum TranscriptionError: Error {
    case invalidNucleotide(message: String)
}
class Nucleotide{
    var transcriptionString : String
    func complementOfDNA() throws -> String {
        
        var complementOfDna = ""
        for char in transcriptionString {
            
           switch char {
            case "A":
                complementOfDna.append("U")
            case "T":
                complementOfDna.append("A")
            case "G":
                complementOfDna.append("C")
            case "C":
                complementOfDna.append("G")
            default:
                throw TranscriptionError.invalidNucleotide(message: "\(char) is not a valid Nucleotide")
            }
            
        }
        
        return complementOfDna
    }
    
    init(_ trancript: String) {
        self.transcriptionString = trancript
    }
}
