// Classes are pass by reference, structs are pass by copy


class Car {
    var wheels: Int
    
    init(wheels:Int) {
        self.wheels = wheels
    }
}

struct Line {
    var length: Int
}


// The number of wheels turns out to be 6 for both because classes are called by referece, so it's working on the same piece of information
var myCar = Car(wheels: 4)
myCar.wheels = 10

var chaseCar = myCar
chaseCar.wheels = 6

myCar.wheels
chaseCar.wheels


// The length is different for the two because structs are called by copy, so it took the original information, made a copy, and changed it
var myLine = Line(length: 10)
myLine.length = 20

var secondLine = myLine
secondLine.length = 30

myLine.length
secondLine.length
