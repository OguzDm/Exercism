class ETL {
    static func transform(_ old:[Int:[String]]) -> [String: Int] {
        var transformedDict = [String: Int]()
        for i in old {
            for j in i.value {
                transformedDict[j.lowercased()] = i.key
            }
        }
        return transformedDict
    }
}
