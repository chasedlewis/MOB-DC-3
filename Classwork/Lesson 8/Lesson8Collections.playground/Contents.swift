// Define Array (Long Syntax)
// The formal way of writing it, you probably will use the shorter version

var longArray = Array<String>(arrayLiteral: "Kris", "Luke", "Handy") // says this is an array that takes strings
longArray.append("Thomas")

//Define Array (Short Syntax)

var shortArray = ["Kris", "Luke", "Handy"]
var shortArray2: [String] = ["Kris", "Luke", "Handy"] // both are the same but this one explicitly says that they are strings

shortArray.append("Chase")
shortArray.append(newElement: String)