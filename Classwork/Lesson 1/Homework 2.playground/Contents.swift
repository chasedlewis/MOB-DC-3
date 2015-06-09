import UIKit

let currentTimeAndDate = NSDate()
var currentTemperature = 72.0
println("Current temperature oustide is \(currentTemperature)")

let oneHourFromNow = NSDate(timeIntervalSinceNow: 3600)
currentTemperature = 74.0
println("Current temperature oustide is \(currentTemperature)")

let twoHoursFromNow = NSDate(timeIntervalSinceNow: 6400)
currentTemperature = 76.0
println("Current temperature oustide is \(currentTemperature)")

let threeHoursFromNow = NSDate(timeIntervalSinceNow: 9600)
currentTemperature = 80.0
println("Current temperature oustide is \(currentTemperature)")