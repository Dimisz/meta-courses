import UIKit

enum CalculatorError: Error {
    case zeroDivision
}

class Calculator {
    func divide(x: Double, y: Double) throws -> Double {
        if y == 0.0 {
            throw CalculatorError.zeroDivision
        }
        return x / y
    }
}

let calculator = Calculator()
do {
    let successfulResult = try calculator.divide(x: 234, y: 32.2)
    print(successfulResult)
    let invalidResult = try calculator.divide(x: 234, y: 0)
    // everything belo error will not execute
    print(invalidResult)
    let newsuccessfulResult = try calculator.divide(x: 234, y: 32.2)
    print(newsuccessfulResult)
}
catch CalculatorError.zeroDivision {
    print("You cannot divide by zero")
}
catch {
    print("Something went wrong")
}
