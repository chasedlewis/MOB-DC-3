// Declare Dictionary (Long Way)

let constantDict = Dictionary<String, String>(dictionaryLiteral: ("Devin", "White"), ("Luke", "Black"))


// Declare Dictionary (Short Way)

var dict = ["Devin": "White", "Luke": "Black"]


// How to add an element
dict["Kris"] = "lime green" // this will only add a new element if "Kris" is not defined
dict


// How to change a key's value
dict["Luke"] = "Navy Blue"
dict


// How to count the number of elements in a dictionary
dict.count


//  How to acess only the keys
dict.keys.array


// How to access only the values
dict.values.array


// How to remove a value
dict.removeValueForKey("Luke")


// Any Object Concept
var profile: [String: AnyObject] = ["Name": "Arthur", "Age": 29, "Location": "Maryland"]

