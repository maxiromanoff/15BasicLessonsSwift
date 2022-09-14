import Foundation

/**
 How to create your own structs
*/

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) \(year) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

//red.printSummary()
//wings.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops!")
        }
    }
}

//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.takeVacation(days: 5)
//print(archer.vacationRemaining)

struct Diary {
    var entries: String
    mutating func add(entry: String) {
         entries += "\(entry)"
        print(entries)
    }
}

//var diary = Diary(entries: "Yen")
//diary.add(entry: "Ha")

/**
 How to compute property values dynamically
*/

struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

//var archer = Employee2(name: "Sterling Archer")
//archer.vacationTaken += 4
//print(archer.vacationRemaining)
//archer.vacationRemaining = 5
//print(archer.vacationAllocated)

/**
 How to take action when a property changes: didSet like hasSet
*/

struct App {
    var contacts = Array<String> () {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

//var app = App()
//app.contacts.append("William K")
//app.contacts.append("Serena")

/**
    How to create custom initializers
     Note: https://www.hackingwithswift.com/quick-start/understanding-swift/how-do-swifts-memberwise-initializers-work
*/

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

//let player = Player(name: "Maxiromanoff")
//player.number
//player.name

struct Test {
    var name: String
    var yearsActive = 0
}

extension Test {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee")
    }
}

//let roslin = Test(name: "Roslin A")
//roslin.name
//
//let anna = Test()
//anna.name

struct Cabinet {
    var height: Double
    var width: Double
    var area: Double
    init (itemHeight: Double, itemWidth: Double) {
        height = itemHeight
        width = itemWidth
        area = height * width
    }
}
let drawers = Cabinet(itemHeight: 1.4, itemWidth: 1.0)
