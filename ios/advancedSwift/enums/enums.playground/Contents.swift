/*
enum Dessert {
    case tiramisu
    case affogato
    case cannoli
}

let favoriteDessert = Dessert.tiramisu

switch favoriteDessert {
case .tiramisu:
    print("Tiramisu is this week's favorite dessert!")
case .affogato:
    print("Affogato is this week's favorite dessert!")
case .cannoli:
    print("Cannoli is this week's favorite dessert!")
}
*/

import Security

enum PastaTypes: Int, CaseIterable {
    case spaghetti = 8
    case penne = 10
    case ravioli = 11
    case rigatoni = 12
}

//let cookingTime = PastaTypes.spaghetti.rawValue
//print("Spaghetti would be perfectly cooked in \(cookingTime) minutes.")

func cookingPerfectPasta(pasta: PastaTypes){
    let cookingTime = pasta.rawValue
    print("\(pasta) would be perfectly cooked in \(cookingTime) minutes")
}

let totalCaseCount = PastaTypes.allCases.count
print("We have \(totalCaseCount) types of pasta")
//for i in PastaTypes.allCases {
//    print(i)
//}
cookingPerfectPasta(pasta: .spaghetti)
cookingPerfectPasta(pasta: .rigatoni)
