import UIKit

// MAP
let nums = [1, 2, 3, 4, 5]
//let numsDoubled = nums.map({ (num) in
//    return num * 2
//})
let numsDoubled = nums.map({$0 * 3}) // shorthand syntax

print(nums)
print(numsDoubled)

// filter
let evenNums = nums.filter({$0 % 2 == 0})
print(evenNums)

let numsAdded = nums.reduce(0){$0 + $1}
print(numsAdded)
