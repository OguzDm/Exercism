struct ProteinTranslation {
    enum ProteinError: Error {
        case invalidNucleotideSequence
    }
    enum Protein: String {
        case Methionine
        case Phenylalanine
        case Leucine
        case Serine
        case Tyrosine
        case Cysteine
        case Tryptophan
        case STOP

        init(codon: String) throws {
            switch codon {
            case "AUG":
                self = .Methionine
            case "UUU", "UUC":
                self = .Phenylalanine
            case "UUA", "UUG":
                self = .Leucine
            case "UCU", "UCC", "UCA", "UCG":
                self = .Serine
            case "UAU", "UAC":
                self = .Tyrosine
            case "UGU", "UGC":
                self = .Cysteine
            case "UGG":
                self = .Tryptophan
            case "UAA", "UAG", "UGA":
                self = .STOP
            default:
                throw ProteinError.invalidNucleotideSequence
            }
        }
    }

    static func translationOfCodon(_ codon: String) throws -> String {
        return try Protein(codon: codon).rawValue
    }

    static func translationOfRNA(_ rna: String) throws -> [String] {

        guard !rna.isEmpty else {
            return []
        }

        let protein: Protein

        do {
            protein = try Protein(codon: String(rna.prefix(3)))
        } catch(let error){
            throw error
        }

        guard protein != .STOP else {
            return []
        }

        return try [protein.rawValue] + translationOfRNA(String(rna.dropFirst(3)))
    }
}
