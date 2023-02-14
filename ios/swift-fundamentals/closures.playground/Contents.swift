// basic closure
var myClosure = {() -> () in
    print("My first closure")
}

myClosure()

let multiplyNumbers = {(_ a: Int, _ b: Int) -> (Int) in
    return a * b
}

print("5 * 9 = \(multiplyNumbers(5, 9))")
