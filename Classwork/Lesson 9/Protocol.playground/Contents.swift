import Foundation

protocol Characteristics {
    
    var isAlive: Bool { get set }
    
    func eat()
}

protocol Holidays {
    var isChristmas: Bool { get }
    func birthday(day: NSCalendar) -> Bool
}

class Human {
    
}

class Animal: Characteristics {
    var isAlive: Bool = false
    
    func eat() {
        
    }
}

class Cat: Animal, Holidays {
    var isChristmas = true
    
    func birthday(day: NSCalendar) -> Bool {
        return true
    }
}

let tiger = Cat()
tiger.isAlive
tiger.isChristmas
tiger.breathe()
