func flattenArray<T>(_ Array: [Any?]) -> [T] {
    var flat: [T] = []
    for i in Array {
        if let i = i as? T {
            flat.append(i)
        }
        else if let array = i as? [Any?] {
            flat.append(contentsOf: flattenArray(array))
        }
    }
        return flat
}
