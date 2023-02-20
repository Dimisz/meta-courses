import Foundation
/*
struct Recipe: Decodable {
    let title: String
    let views: Int
}

let JSON = """
{
    "title": "Little Lemon Apple pineapple",
    "views": 47093
}
"""
let jsonData = JSON.data(using: .utf8)!

let recipe = try! JSONDecoder().decode(Recipe.self, from: jsonData)
print(recipe.title)


// JSON ARRAY OF OBJECTS
let JSONArray = """
[
    {
        "title": "Little Lemon Apple Pie",
        "views": 47093
    },
    {
        "title": "Little Lemon Scrambled egg",
        "views": 10757
    }
]
"""

let jsonArrayData = JSONArray.data(using: .utf8)!
let recipes = try! JSONDecoder().decode([Recipe].self, from: jsonArrayData)

for i in recipes {
    print("Recipe:\n\tTitle: \(i.title)\n\tViews: \(i.views)")
}
*/

//mapping JSON keys to custom property names
//CodingKey protocol
struct Recipe2: Decodable {
    enum CodingKeys: String, CodingKey {case
        title = "name", // title in our struct, name in JSON object
        views = "times_viewed",
        imageLink = "url"
    }
    let title: String
    let views: Int
    let imageLink: String
}

let JSON2 = """
{
    "name": "Little Lemon Apple Pie",
    "times_viewed": 47093,
    "url": "www.littlelemon.com/recipes/298/image.png"
}
"""

let jsonData2 = JSON2.data(using: .utf8)!
let recipe2 = try! JSONDecoder().decode(Recipe2.self, from: jsonData2)
print(recipe2.title)
print(recipe2.views)
print(recipe2.imageLink)

