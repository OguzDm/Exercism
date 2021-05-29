extension Array {
    func keep(_ element: (Element) -> Bool) -> Array {
        var temp = [Element]()
        for i in self {
            if element(i) {
                temp.append(i)
            }
        }
        return temp
    }
    func discard(_ element: (Element) -> Bool) -> Array {
        return keep { !element($0) }
    }
}
