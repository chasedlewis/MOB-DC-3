// Polymorphic Fuctions

func car(wheels: Int, doors: Int) {
    println("Woohoo, a simple car with \(wheels) wheels and \(doors) doors")
}

func car(wheels: Int, spoiler: Bool) {
    println("Woohoo, a car with a sunroof and \(wheels) wheels")
}

car (2,2)
let statement = car(2,true)




// Data Structures

class Car {
    // Properties
    var wheels: Int
    var doors: Int
    var make: String
    
    // Initializer Method (aka: Initializer function)
    init() { // this is the entry point
        wheels = 4
        doors = 4
        make = "Kia"
    }
    
}

// My car is an object, or an instance of Car()
var myCar = Car()
var chasesCar = Car()

// GETTING the value from the property "wheels"
println(myCar.wheels)

// GETTING the value from the property "name"
println(myCar.make)

// SETTING the value of 'male' from Kia to BMW
chasesCar.make = "Range Rover"
println(chasesCar.make)