var travelMiles: Dictionary<String, Int> = [
    "John Doe": 5000,
    "Mary Jane": 3000
]

var bonusGifts = Dictionary<String, Int>() // empty dictionary
print(travelMiles.count)

// adding an item
//travelMiles["Pete"] = 400
//print(travelMiles)

let traveller = "John Doe"
//let traveller = "Phillip Scot"
//if let travellerMiles = travelMiles[traveller] {
//    print("\(traveller) has \(travellerMiles) miles")
//}
//else {
//    print("\(traveller) is not registered with the program")
//}

// SAFE UPDATE TO A VALUE - AVOIDING TO CREATING A NEW KEY
//if let oldValue = travelMiles.updateValue(12000, forKey: traveller){
//    print("The old value was \(oldValue)")
//}

// SAFE WAY TO DELETE AN ITEM
if let deletedItem = travelMiles.removeValue(forKey: traveller){
    print(deletedItem)
    print(travelMiles)
}
else {
    print("No records found for \(traveller)")
}

travelMiles["Pete"] = nil // another way to delete a value without feedback
