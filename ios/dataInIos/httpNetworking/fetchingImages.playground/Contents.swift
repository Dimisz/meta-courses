import Foundation
import UIKit

let jsonString = """
    {
        "name": "John",
        "picture": "https://github.com/Meta-Mobile-Developer-PC/Working-With-Data-API/blob/main/little-lemon-logo.png?raw=true"
    }
"""

struct Profile: Decodable {
    let name: String
    let picture: String
}

let jsonData = Data(jsonString.utf8)
let decoder = JSONDecoder()
let profile = try! decoder.decode(Profile.self, from: jsonData)

let pictureUrl = URL(string: profile.picture)
guard let pictureUrl = pictureUrl else {
    throw NSError()
}
let request = URLRequest(url: pictureUrl)
let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let data = data {
        let image = UIImage(data: data)
        print(image)
    }
}

task.resume()
