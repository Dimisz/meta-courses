import Foundation

let menuAddress = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"

let menuURL = URL(string: menuAddress)

guard let menuURL = menuURL else {
    throw NSError()
}

let request = URLRequest(url: menuURL)

let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let data = data,
       let responseString = String(data: data, encoding: .utf8){
        print(responseString)
    }
       
}

task.resume()
