// Define a Singleton

class MyNormalClass {
    internal var age: Int?
}

let a = MyNormalClass()
a.age = 10
let b = MyNormalClass()
b.age

//let b = a
let check = (a === b)

class MySingletonClass {
 
    static let sharedInstance = MySingletonClass() // Static because it's a class level constant, which means you can access this constant without making an instance. It can be done just by using the class (
    var age: Int?
    
    init() {
        println("Singleton, initialized!");
    }
    
    func doSomething() {
        println("I'm doing something!")
    }
}


let singleton = MySingletonClass.sharedInstance //This makes the new instance have all of the properties and methods of MySingletonClass

// One Singleton Instance
let singletonA =  MySingletonClass.sharedInstance
singletonA.doSomething()
singletonA.age = 10

// Another Singleton Instance
let singletonB =  MySingletonClass.sharedInstance
singletonB.doSomething()
singletonB.age

// Equivalence Check
let equivalenceCheck = (singletonA === singletonB)
