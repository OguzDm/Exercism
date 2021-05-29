import Foundation
class Gigasecond {

    let from : String
    
    var description: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.timeZone = TimeZone(abbreviation: "GMT")
        var fromDate = formatter.date(from: from)
        fromDate?.addTimeInterval(1000000000)
        return formatter.string(from: fromDate!)
    }
    init?(from: String) {
        self.from = from
    }
}
