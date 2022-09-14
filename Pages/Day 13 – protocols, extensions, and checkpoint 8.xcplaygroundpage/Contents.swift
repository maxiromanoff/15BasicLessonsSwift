import Foundation

/**
 How to create and use protocols
*/

protocol Vehicle {
    var name: String {get}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    
    func estimateTime(for distance: Int) -> Int {
        return distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance) km")
    }
    
    func openSunroof() {
        print("Nice day")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    
    func estimateTime(for distance: Int) -> Int {
        return distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance) km")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle!")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

//let car = Car()
//commute(distance: 100, using: car)
//let bike = Bicycle()
//commute(distance: 20, using: bike)
//getTravelEstimates(using: [car, bike], distance: 150)

/**
 How to use opaque return types
 https://www.hackingwithswift.com/quick-start/beginners/how-to-use-opaque-return-types
*/

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}
//print(getRandomNumber() == getRandomBool())

/**
 How to create and use extensions
 https://www.hackingwithswift.com/quick-start/beginners/how-to-create-and-use-extensions
*/

var quote = " Lorem Ipsum is simply dummy text of the printing and typesetting industry "
//let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

//quote.trimmed()
//let lyrics = """
//But I keep cruising
//Can't stop, won't stop moving
//It's like I got this music in my mind
//Saying it's gonna be alright
//"""
//print(lyrics.lines)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

//let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

/**
 How to create and use protocol extensions
 https://www.hackingwithswift.com/quick-start/beginners/how-to-create-and-use-protocol-extensions
*/

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Malfoy", "Potter"]
if guests.isNotEmpty {
//    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String {get}
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hello, I am \(name)")
    }
}

struct Employee: Person {
    let name: String
}

//let taylor = Employee(name: "Taylor Swift")
//taylor.sayHello()

/**
    Checkpoint 8: https://www.hackingwithswift.com/quick-start/beginners/checkpoint-8
*/

protocol Building {
    var cost: Int {get set}
    var nameAgent: String {get}
    var rooms: Int {get}
    
    func alertBuildingInfo(sale: Int)
}

extension Building {
    func alertBuildingInfo(sale: Int) {
        print(
        """
        The sale summary is $\(sale * cost),
        The number of rooms are \(rooms),
        Name of estate agent is \(nameAgent)
        """
        )
    }
}


struct House: Building {
    let rooms: Int
    let nameAgent: String
    var cost: Int
}

struct Office: Building {
    let rooms: Int
    let nameAgent: String
    var cost: Int
}
    
//let house = House(rooms: 4, nameAgent: "Golden Estate", cost: 500_000)
//house.alertBuildingInfo(sale: 5)
//let office = Office(rooms: 8, nameAgent: "Novaland Group", cost: 750_000)
//office.alertBuildingInfo(sale: 5)

