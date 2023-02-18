import UIKit

struct Order {
    let price: Int
    let location: String
}

func totalRevenueOf(orders: [Order], location: String) -> Int {
    let ordersAtLocation = orders.filter({$0.location == location})
    //print(ordersAtLocation)
    let orderPrices = ordersAtLocation.map({$0.price})
//    print(orderPrices)
    let totalRevenue = orderPrices.reduce(0){$0 + $1}
//    print(totalRevenue)
    return totalRevenue
}

let orders = [
    Order(price: 24, location: "New York"),
    Order(price: 37, location: "San Francisco"),
    Order(price: 101, location: "New York"),
]

let result = totalRevenueOf(orders: orders, location: "New York")
print(result)
