struct GradeSchool {
    var roster = [Int:[String]] ()
    mutating func addStudent(_ name: String, grade: Int) {
          roster[grade, default: []].append(name)
      }
    func studentsInGrade(_ grade: Int) -> [String] {
        roster[grade] ?? []
    }
    var sortedRoster: [Int: [String]] {
           return roster.mapValues { $0.sorted() }
       }
}
