import Foundation

let recipesJSONString = """
[
    {
        "title": "Apple pie",
        "views": 3847,
        "rating": 4.5
    },
    {
        "title": "Boiled Egg",
        "views": 10584,
        "rating": 4.9
    },
    {
        "title": "Bacon Roll",
        "views": 5847,
        "rating": 3.2
    },
]
"""

struct Recipe: Decodable {
    enum CodingKeys: String, CodingKey { case
        itemTitle = "title",
        itemViews = "views"
//        itemRating = "rating"
    }
    let itemTitle: String
    let itemViews: Int
//    let itemRating: Double
    
    func printInfo(){
//        print("Title: \(itemTitle), viewed: \(itemViews), rating: \(itemRating).")
        print("Title: \(itemTitle) viewed: \(itemViews).")
    }
}

let jsonArrayData = Data(recipesJSONString.utf8)
//let jsonArrayData = recipesJSONString.data(using: .utf8)!
let recipes = try! JSONDecoder().decode([Recipe].self, from: jsonArrayData)

for recipe in recipes {
    recipe.printInfo()
}

