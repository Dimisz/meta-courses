/*
struct TableReservation {
    var name: String
    let tableNumber: Int
    
    mutating func updateCustomerName(newName: String){
        self.name = newName
    }
    
    func printReservation(){
        print("Table No.\(tableNumber) is reserved for \(name).")
    }
}

var johnReservation = TableReservation( name: "John Doe", tableNumber: 1 )
johnReservation.printReservation()
johnReservation.updateCustomerName(newName: "Mary Poppins")
johnReservation.printReservation()
*/
struct User {
  var iD: Int
  init(iD: Int) {
    self.iD = iD
  }
}

var user1 = User(iD: 1)
var user2 = user1
user1.iD = 2
print("\(user1.iD) \(user2.iD)")
