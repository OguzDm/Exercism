struct  PhoneNumber{
    var number : String
    var areaCode: String
    
    init(_ phoneNum: String) {
        var tempNumber = phoneNum
        if tempNumber.first == "1" {
            tempNumber.removeFirst()
        }
        tempNumber.removeAll(where: { ".( )-".contains($0) })
        if tempNumber.count != 10 {
                  number = "0000000000"
              } else {
                 number = tempNumber
              }
        areaCode = String(tempNumber.prefix(3))
    }
    
    var description: String {
        let tempNumber = number.dropFirst(3)
          return "(\(areaCode)) " + "\(tempNumber.prefix(3))-\(tempNumber.suffix(4))"
      }
}
extension String {
    init(describing: PhoneNumber) {
        self = describing.description
    }
}

