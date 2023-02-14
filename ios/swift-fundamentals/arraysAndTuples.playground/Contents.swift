/*
//ARRAYS
var numArray: [Int] = [1, 2, 4, 6]

for num in numArray {
    print(num)
}

print("First number is: \(numArray[0])")

// append
numArray.append(33)
print(numArray)

// insert(value, at: index)
numArray.insert(22, at: 2)
print(numArray)

// .remove(at: index)
numArray.remove(at: 0)
print(numArray)
*/

//TUPLE
var veggies = ("Carrot", 3, true)

// decomposing a tuple
var (vegType, qty, inStock) = veggies
print("\(qty) \(vegType) \(inStock)")

let tea = (type: "Green", weight: 200, inStock: true)

// access by label
print("\(tea.type) tea in \(tea.weight)gr packs is in stock: \(tea.inStock)")

//access by index
print("\(tea.0) tea in \(tea.1)gr packs is in stock: \(tea.2)")

