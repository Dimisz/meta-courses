enum PastaTypes {
    case spaghetti(cookingTime: Int)
    case penne(cookingTime: Int)
    case ravioli(cookingTime: Int)
    case fusilli(cookingTime: Int)
    case rigatoni(cookingTime: Int)
}

func checkIfCooked(for pasta: PastaTypes) {
  switch pasta {
  case .spaghetti(let cookingTime):
    if cookingTime < 8 {
      print("Spaghetti is still not fully cooked...")
    } else {
      print("Spaghetti is cooked, take it out of the water!")
    }

  default: return
  }
}

checkIfCooked(for: .spaghetti(cookingTime: 9))

func checkIfCooked2(for pasta: PastaTypes) {
  switch pasta {
  case .spaghetti(let cookingTime) where cookingTime >= 8:
    print("Spaghetti is cooked, take it out of the water!")
  default: print("Pasta is not cooked.")
  }
}
checkIfCooked2(for: .spaghetti(cookingTime: 7))

