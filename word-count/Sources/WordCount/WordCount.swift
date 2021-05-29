class WordCount {
    var word : String
    
    init(words: String){
        self.word = words
    }
    func count() -> [String:Int] {
        var count = 0
        var stringAndCountDict = [String:Int]()
        let okayString = removeSpecialCharsFromString(text: word)
        let stringArray = okayString.split(separator: " ")
    
        for i in 0..<stringArray.count{
            for j in 0..<stringArray.count{
                if stringArray[i].lowercased() == stringArray[j].lowercased() {
                    count = count + 1
                    stringAndCountDict[String(stringArray[i].lowercased())] = count
                }
            }
            count = 0
        }
        
        
        return stringAndCountDict
    }
    func removeSpecialCharsFromString(text: String) -> String {
        let okayChars : Set<Character> =
            Set("abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLKMNOPQRSTUVWXYZ1234567890")
        return String(text.filter {okayChars.contains($0) })
    }
    
}
