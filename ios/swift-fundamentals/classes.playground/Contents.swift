/*
class Recipe {
    var ingredients: [String]
    var isAvailable = false
    
    init(ingredients: [String]){
        self.ingredients = ingredients
    }
}

var marioRecipe = Recipe(ingredients: ["Cocoa powder", "Flour"])
print(marioRecipe.ingredients)
 */

class Menu {
    var mains: [String] = []
    var drinks: [String] = []
    var desserts: [String] = []
    var itemsCount: Int {
        mains.count + drinks.count + desserts.count
    }
    init(mains: [String], drinks:[String], desserts:[String]){
        self.mains = mains
        self.drinks = drinks
        self.desserts = desserts
    }
}
