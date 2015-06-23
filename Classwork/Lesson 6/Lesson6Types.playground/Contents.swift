//________________ Class

class ReferenceTypeExample {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let exampleA = ReferenceTypeExample(name: "Chase")
let exampleB = exampleA
exampleB
exampleB.name = "Thomas"
exampleA

(exampleA === exampleB) // this is how you compare instances





//________________ Struct

struct ValueTypeExample {
    var name: String
}

var valueExampleA = ValueTypeExample(name: "Chase")
var valueExampleB = valueExampleA
valueExampleB
valueExampleB.name = "Thomas"
valueExampleB
valueExampleA

// Which is similar to...

let myName = "Chase"
var yourName = myName
yourName = "Thomas"