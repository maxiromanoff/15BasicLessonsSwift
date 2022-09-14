import Foundation

/**
 How to limit access to internal data using access control
*/

/**
 Use private for “don’t let anything outside the struct use this.”
 Use fileprivate for “don’t let anything outside the current file use this.”
 Use public for “let anyone, anywhere use this.”
*/

struct BankAccount {
    private var funds = 0
    
    mutating func deposit(amount: Int) -> Int {
        return funds + amount
    }
    
    mutating func withdraw(amount: Int) -> String {
        if funds >= amount {
            funds -= amount
            return "Withdrew money successful"
        } else {
            return "Failed to get the money"
        }
    }
}

//var account = BankAccount()
////account.funds = 1000
//print(account.deposit(amount: 100))
//print(account.withdraw(amount: 100))

//struct Order {
//    private var id: Int
//    init(initId: Int) {
//        id = initId
//    }
//}
//let order = Order(initId: 1)

//struct School {
//    var staffNames: [String]
//    private var studentNames: [String]
//    init(staff: String...) {
//        self.staffNames = staff
//        self.studentNames = [String]()
//    }
//}
//let royalHigh = School(staff: "Mrs Hughes")

//struct Toy {
//    var customerPrice: Int
//    private var actualPrice: Int
//    init(price: Int) {
//        actualPrice = price
//        customerPrice = actualPrice * 2
//    }
//}
//let buzz = Toy(price: 10)
//buzz.customerPrice

/**
 Static properties and methods
*/

/**
    What is the difference between self and Self?
     - self: the current "value" of a struct
     - Self: the current "type" of a struct
*/

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

//School.add(student: "Adele")
//print(School.studentCount)

// mixing non-static with static

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "Adele", password: "123456a@#")
}
//print(Employee.example)

struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
           print(NewsStory.breakingNewsCount += 1)
        } else {
            print(NewsStory.regularNewsCount -= 1)
        }
    }
}
//let newStory = NewsStory(headline: "Adele", isBreaking: true)
//NewsStory.regularNewsCount

/**
 Summary of struct: https://www.hackingwithswift.com/quick-start/beginners/summary-structs
*/

/**
    Checkpoint 6: https://www.hackingwithswift.com/quick-start/beginners/checkpoint-6
*/

struct Car {
    private let model = "BMW"
    private let seats = 5
    var currentGear = 1

    mutating func changeGear(isGearUp: Bool) {
        if(currentGear <= 1 && isGearUp == false) {
            print("\(currentGear) is minimum gear of the car")
        } else if (currentGear >= 10 && isGearUp == true) {
            print("\(currentGear) is maximum gear of the car")
        } else {
            if isGearUp == true {
                currentGear = currentGear + 1
                print("Gear up: \(currentGear)")
            } else {
                currentGear = currentGear - 1
                print("Gear down: \(currentGear)")
            }
        }
    }
}

var car = Car(currentGear: 1)
car.changeGear(isGearUp: false)

struct Car2 {
    private let model: String
    private let seats: Int
    private (set) var currentGear = 1
    
    init(modelCar: String, seatCount: Int, currentGear: Int) {
        model = modelCar
        seats = seatCount
        self.currentGear = currentGear
    }
    
    enum GearDirection {
        case up, down
    }
    
    mutating func changeGear(_ direction: GearDirection) {
        switch direction {
            case .up: currentGear += 1
                if currentGear == 10 { currentGear = 10 }
            case .down: currentGear -= 1
                if currentGear < 1 { currentGear = 1 }
        }
        print("The \(model) is in gear: \(currentGear)")
    }
}

var car2 = Car2(modelCar: "BMW", seatCount: 5, currentGear: 4)
car2.changeGear(.up)
car2.changeGear(.down)
