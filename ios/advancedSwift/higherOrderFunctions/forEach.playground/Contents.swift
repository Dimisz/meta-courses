//let donationsInformation  = ["John" : 56, "Tom": 15, "Charlie": 104]
//let donationsTexts = donationsInformation.map { "\($0.key) has donated \($0.value) so far"}
//for text in donationsTexts {
//    print(text)
//}

let donationsInformation = ["John": 56, "Tom": 15, "Charlie": 104]
donationsInformation.map { "\($0.key) has donated \($0.value) so far" }
    .forEach { print($0) }
