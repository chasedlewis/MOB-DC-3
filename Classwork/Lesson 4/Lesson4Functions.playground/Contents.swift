// Function named myFunction that takes no parameters and returns no values
// Camel casing: camelCasing

func myFunction() {
    println("Hey, I'm inside my simple function!")
}

myFunction()




func aMoreComplexFunction(number:Int) {
    for i in 1...number {
        println(i)
    }
    println("-------")
}

aMoreComplexFunction(10)
aMoreComplexFunction(6)




func evenMoreComplex(age: Int, name: String) {  // the var befre age and name is implied
    println("My name is \(name) and I am \(age) years old.")
}

evenMoreComplex(18, "Chase")




func functionWithOptional(age: Int, name: String, location: String?) {
    println("My name is \(name) and I am \(age) years old.")
    
    if let location = location {
        println("...and I am from \(location)")
    }
}

functionWithOptional(18, "Chase", "Maryland")



// Function named cat that takes one parameter of type string and returns a String
func cat(name: String) -> String {  // The arrow "String" needs to be there to specify they type of the return value
    let sentence = "My cat's name is \(name) and it goes meow!"
    return sentence
}

let myCat = cat("Charles")
println(myCat)




//
func lastFunction(alpha: Int, beta: Int, name: String, decimal: Float?) {
    for number in alpha...beta {
        println("My name is \(name) and I have \(number) fingers!")
        
        if let decimal = decimal {
            println("I have $\(decimal) in the bank.")
        } else {
            println("I am poor!")
        }
    }
}

lastFunction(1,10, "Chase", 200)
lastFunction(10, 1, "Chase", nil) // doesn't work because it can't count backwards

