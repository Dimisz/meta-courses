enum Ingredient: String {
    case chicken = "Chicken Filet"
    case lettuce = "Romaine Lettuce"
    case rice = "Basmati Rice"
}

let ingredient = Ingredient.chicken

switch ingredient {
    case .chicken:
        print("We use \(ingredient.rawValue)")
    case .lettuce:
        print("We use \(ingredient.rawValue)")
    case .rice:
        print("We use \(ingredient.rawValue)")
}


enum RecipeInformation {
    case allergens(information: String)
}
let recipeInformation = RecipeInformation.allergens(information: "peanuts, milk and gluten")

switch recipeInformation {
case .allergens(information: let information):
    print("The meal contains the following allrgens: \(information)")
}
