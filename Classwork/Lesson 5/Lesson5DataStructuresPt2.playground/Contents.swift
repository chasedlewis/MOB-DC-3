class Car {
    
    // Properties
    var wheels: Int
    var doors: Int
    var make: String?
    
    // Initializer Method (aka: Initializer function)
    init(wheels: Int, doors: Int, make: String) { // this is the entry point
        self.wheels = wheels
        self.doors = doors
        self.make = make
        // self means "belongs to this class"
    }
    
    // Normal Method
    func drive() -> Bool {
        return true
    }
}

let myCar = Car(wheels: 4, doors: 4, make: "BMW")
myCar.drive()

class Lamborghini: Car { // this says that lamborgini is a subclass/type of car
    var spoiler: Bool?
}

let diablo = Lamborghini(wheels: 4, doors: 2, make: "Diablo")
diablo.spoiler = true


