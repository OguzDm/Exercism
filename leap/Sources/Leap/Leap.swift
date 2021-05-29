class Year {
    
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
    
    var calendarYear: Int
    
    var isLeapYear: Bool {
        if calendarYear % 4 == 0 {
            if calendarYear % 100 == 0 {
                if calendarYear % 400 == 0 {
                    return true
                }
                return false
            }
            return true
        }
        else {
            return false
        }
    }
}

