class Dish {
    private let ingredients: String
    private let name: String
    
    init(ingredients: String, name: String) {
        self.ingredients = ingredients
        self.name = name
    }
    
    func printInfo(){
        print("\tName: \(self.name).")
        print("\tIngredients: \(self.ingredients)")
    }
}

final class AppetizerDish: Dish {
    override func printInfo(){
        print("Appetizer:")
        super.printInfo()
    }
}

final class MainDish: Dish {
}

for _ in 1...5 {
    let num = Int.random(in: 0...1)
    let dish: Dish
    if num == 0 {
        dish = AppetizerDish(ingredients: "Margherita, Flatbread", name: "Margherita Flatbread")
    }
    else {
        dish = MainDish(ingredients: "Spaghetti, Tomato Sauce", name: "Super Spaghetti")
    }
    if let appetizerDish = dish as? AppetizerDish {
        appetizerDish.printInfo()
    }
    if dish is MainDish {
        print("Main Dish!")
    }
}
