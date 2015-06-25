import Foundation

// ***************** Encapsulation - Hiding all of the details

func unlockApp(serialKey: String) -> Bool {
    let containsProperLength = properLength(serialKey)
    let containsSpecificValues = specificValues(serialKey)
    
    let result = containsProperLength && containsSpecificValues
    
    return true
}

func properLength(serialKey: String) -> Bool {
    let length = count(serialKey)
    let result = (length==10) ? true: false
    
    return result
}

func specificValues(serialKey: String) -> Bool {
    let result = (serialKey as NSString).containsString("01") // "serialKey as NSString" allows the .containsString to work with serialKey
    
    return result
}

// True
let password = "Password01"
//unlockApp(password)

//False
unlockApp("password")






// ***************** Abstraction

class Animal {
    var numberOfLimbs: Int
    var mammal: Bool
    var lungs: Bool
    
    init(limbs: Int, mamal: Bool, lungs: Bool) {
        numberOfLimbs = limbs
        self.mammal = mammal
        self.lungs = lungs
    }
    
}

let cat = Animal(limbs: 4, mamal: true, lungs: true)






// ***************** Inheritance

class Cat: Animal {
    var tail: Bool
    
    init(limbs: Int, mamal: Bool, lungs: Bool, tail: Bool) {
        self.tail = tail                                                        // this value has to be set before you use the superclass
        super.init(limbs: limbs, mamal: mammal, lungs: lungs)
    }
}

let tiger = Cat(limbs: 4, mamal: true, lungs: true, tail: true)







// ***************** Polymorphism

func hello() {
    println("Hello, world!")
}

func hello(name: String) {
    println("Hello, \(name)")
}

func hello(name: String, age: Int?) -> Bool {
    if let age = age {
        println("Hello, \(name)! You're \(age) years old!")
    } else {
        println("Hello \(name)!")
    }
    
    return true
}

hello("Chase", 18)
