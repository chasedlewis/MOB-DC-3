// Define Array (Long Syntax)
// The formal way of writing it, you probably will use the shorter version

var longArray = Array<String>(arrayLiteral: "Kris", "Luke", "Handy") // says this is an array that takes strings
longArray.append("Thomas")


//Define Array (Short Syntax)

var shortArray = ["Kris", "Luke", "Handy"]
var shortArray2: [String] = ["Kris", "Luke", "Handy"] // both are the same but this one explicitly says that they are strings


// Adding something to an array

shortArray.append("Chase")
//shortArray.append(4) this won't work because


// Count number of elements

shortArray.count


// Long way of iterating over an array

for i in 0..<shortArray.count {
    println(shortArray[i])
}


// Short way of iterating over an array

for i in shortArray {
    println(i)
}


// Remove last item

let lastValue = shortArray.removeLast()
shortArray
lastValue


// Repopulate the list

shortArray.append("Kate")
shortArray.append("Thomas")
shortArray.append("Rashod")

shortArray += ["Dave", "Cindy"] // How to add multiple values at the same time


// Remove one item in the middle

let removedValue = shortArray.removeAtIndex(2)
shortArray


// Is the array empty?

shortArray.isEmpty


// Create an empty array

var emptyArray = [String]()
emptyArray.isEmpty


// Literal Syntax Reminder
let myName = "Chase"
let myAge = 18
println("My name is \(myName) and I am \(myAge) years old")


// Collection Literals
// Array Literal [,]


// Subscripting
shortArray
shortArray[3] = "Chase"
shortArray

println("My name is \(shortArray[3])")

shortArray[1]

// this does not work for positions that are not already filled, like shortArray[7] when there aren't 7 values