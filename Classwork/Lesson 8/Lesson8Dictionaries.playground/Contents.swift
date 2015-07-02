// Declare Dictionary (Long Way)

let constantDict = Dictionary<String, String>(dictionaryLiteral: ("Devin", "White"), ("Luke", "Black"))


// Declare Dictionary (Short Way)

var dict = ["Devin": "White", "Luke": "Black"]

// Declare Dictionaries with explicit types

var dict: [Int:Int] = [0:0, 1:1, 2:1, 3:2]


// How to add an element
dict["Kris"] = "lime green" // this will only add a new element if "Kris" is not defined
dict


// How to change a value
dict["Luke"] = "Navy Blue"
dict

// How to change a key
names["Chase"] = names["Devin"]
names.removeValueForKey("Devin")

// How to count the number of elements in a dictionary
dict.count


//  How to access only the keys
dict.keys.array


// How to access only the values
dict.values.array


// How to remove a value
dict.removeValueForKey("Luke")


// Any Object Concept
var profile: [String: AnyObject] = ["Name": "Arthur", "Age": 29, "Location": "Maryland"]

