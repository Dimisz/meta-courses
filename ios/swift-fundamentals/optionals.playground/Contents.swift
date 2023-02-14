// declare an optional
var aValue: Int?
let bValue: Int! = aValue // forced unwrapping


if let unwrappedValue = aValue {
    print(unwrappedValue)
}
else {
    print("No value")
}
