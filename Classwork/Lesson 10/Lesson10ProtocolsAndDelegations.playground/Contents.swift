// --------- Protocol Review

protocol Automotive {
    func drive()
    func honk()
    func turnOnLights()
}

class Car: Automotive {
    func drive() {
        
    }
    
    func honk() {
        
    }
    
    func turnOnLights() {
        
    }
}

class Train: Automotive {
    func drive() {

    }
    
    func honk() {
        
    }
    
    func turnOnLights() {
        
    }
}

let honda = Car()
let porsche = Car()
let thomas = Train()

var array = [Automotive]()
array.append(honda)
array.append(porsche)
array.append(thomas)



// --------- Delegation

/********Country.swift*********/
protocol Delegate {
    func startAWar()
    func makePeace()
}

class Country {
    
    var delegate: Spokesperson?
    
}

/*****************************/

class Spokesperson {
    
    func startAWar() {
        
    }
    
    func makePeace() {
        
    }
    
}


let handy = Spokesperson()
let france = Country()
france.delegate = handy





















