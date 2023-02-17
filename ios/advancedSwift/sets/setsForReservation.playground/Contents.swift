let reservationsInPerson: Set<String> = ["000-345-3441", "000-325-3443"]
let reservationsOnline: Set<String> = ["000-345-6223", "000-345-7223"]
let reservationsOnPhone: Set<String> = ["000-345-3443", "000-345-5223"]

let inPersonAndOverPhone: Set<String> = reservationsInPerson.union(reservationsOnPhone)
print(inPersonAndOverPhone)

let allPhoneNumbers: Set<String> = inPersonAndOverPhone.union(reservationsOnline)
print(allPhoneNumbers)

//enum Week: Int, CaseIterable {
//  case Monday = 1
//  case Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
//}
//
//for day in Week.allCases {
//  print("\(day) is day \(day.rawValue) of the week")
//}
enum PastaTypes: Int {
    case spaghetti
    case penne
    case ravioli
    case rigatoni
}

print(PastaTypes.penne.rawValue)
