func sortLetters(a: String, b: String) -> Bool {
    return a < b
}

let letters = ["H", "E", "X", "A"]

let sortedLetterWithFunc = letters.sorted(by: sortLetters)
print(sortedLetterWithFunc)

// reverse sort with closure
let sortedLettersWithClosure = letters.sorted(by: {(a: String, b: String) -> Bool in
    return a > b
})
print(sortedLettersWithClosure)
