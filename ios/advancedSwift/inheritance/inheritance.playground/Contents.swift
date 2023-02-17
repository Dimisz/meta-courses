class Vegetable {
    let primaryColor = "green" // stored property cannot be overriden
    var color: String {
        "light green"
    }// computed property
    func sing(){
        print("I'm an awesome vegetable")
    }
}

class Spinach: Vegetable {
}

class Broccoli: Vegetable {
    override func sing() {
        print("\(primaryColor) is my favourite color")
        super.sing()
    }
}

class Carrot: Vegetable {
    override var color: String {
        "red"
    }
}

let spinach = Spinach()
let broccoli = Broccoli()
let carrot = Carrot()
print(spinach.color)
spinach.sing()

print(broccoli.color)
broccoli.sing()

print(carrot.color)
carrot.sing()
