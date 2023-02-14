/*
struct MenuItem{
    let name: String
    var price: Double
    func getInfo() -> Void {
        print("\(self.name): \(self.price)")
    }
    
    init(name: String = "Unknown", price: Double = 0.0){
        self.name = name
        self.price = price
    }
}

let firstItem = MenuItem(name: "Fried Chicken", price: 15.99)
let secondItem = MenuItem()
let thirdItem = MenuItem(price: 20.99)
firstItem.getInfo()
secondItem.getInfo()
thirdItem.getInfo()
*/

struct Recipe {
    let name: String
    var ingredients: Set<String>
    var steps: [String]
    var orderCount = 0
    
    mutating func incrementCount(){
        self.orderCount += 1
    }
    mutating func decrementCount(){
        self.orderCount -= 1
    }
    func printDescription() -> Void {
        print("Recipe: \(name)")
        print("Ingredients: \(ingredients)")
        print("Steps: ")
        for (index, step) in steps.enumerated() {
            print("\t\(index + 1). \(step).")
        }
        print("Currently ordered \(orderCount) times.")
    }
}

var chocolateCookie = Recipe(
    name: "Chocolate Cokie",
    ingredients: [
        "Cocoa powder",
        "Chocolate chip",
        "Flour"
    ],
    steps: [
    "First action",
    "Second action",
    "Third action"
    ]
)

chocolateCookie.printDescription()
for _ in 1...5 {
    chocolateCookie.incrementCount()
}
chocolateCookie.printDescription()
chocolateCookie.decrementCount()
chocolateCookie.printDescription()


