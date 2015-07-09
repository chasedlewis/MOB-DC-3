/******Country.swift******/ // Think of this as a sign-up page that the information is coming from
protocol CountryDelegate {
    func negotiate()
    func startWar()
}


class Country {
    var delegate: CountryDelegate?
    
    func performNegotiation() {
        
        if let delegate = delegate {
            delegate.negotiate()
        }
        
        if let delegate = delegate {
            delegate.startWar()
        }
    }
}

/******Ambassador.swift******/ // Think of this as the profile page in which the information is

// Ambassador takes orders from Country, so Spokesperson is the Delegate
class Ambassador: CountryDelegate {
    func negotiate() {
        println("I shall negotiate")
    }
    
    func startWar() {
        
    }
    
    
}


/*******Lieu.swift*******/
// Lieu takes orders from Country, so Spokesperson is the Delegate
class Lieu: Ambassador {
    override func negotiate() {
        super.negotiate()
        println("I shall start war!")
    }
    
    override func startWar() {
        super.startWar()
        println("I shall start a war")
    }
}



/****************************/

/*
let usa = Country()
let devin = Ambassador()

usa.delegate = devin
usa.performNegotiation()

let luke = Lieu()
usa.delegate = luke
usa.performNegotiation()
*/


let devin = Ambassador()

let luke = Lieu()

usa.delegate = luke
usa.startWar()


