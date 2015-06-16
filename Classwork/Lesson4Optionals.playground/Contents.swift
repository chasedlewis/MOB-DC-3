// Optionals
var y: Int? = nil //question mark makes an optional, nil means it has no value
y = 10


// Optional Binding
// taking an optional and binding it to another variable
var age: Int?

if let unwrappedAge = age {                    //will not work if "age" is nill
    "The person is \(unwrappedAge) yeards old"
} else {
    "The variable, 'age', was not set."
}

if let age = age {   //the 1st age is unwrapped, so it overrides the second one
    "The person is \(age) yeards old"
} else {
    "The variable, 'age', was not set."
}

//Forced Unwrapping
// If I'm sure I've set String to Arthur, you can check it using an exlamtion mark
var name: String? = "Arthur"

name!

var age: Int?
if let age = age {
    println("age: \(age)")
} else {
    age = 100
}
