func addTwoNums(a: Int, b: Int) -> Int {
    return a + b
}

let result = addTwoNums(a: 5, b: 10)
print(result)

// returning multiple values
func findMinMax(a: Int, b: Int) -> (Int, Int) {
    if a > b {
        return (b, a)
    }
    return (a, b)
}

let (min, max) = findMinMax(a: 200, b: 135)
print("Min: \(min), Max: \(max)")

// assigning function to a variable
var mathFunction: (Int, Int) -> (Int, Int) = findMinMax
print(mathFunction(3, 4))
