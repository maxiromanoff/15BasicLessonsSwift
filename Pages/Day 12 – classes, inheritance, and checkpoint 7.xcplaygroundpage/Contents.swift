import Foundation

/**
How to create your own classes
5  differences between struct and class:
 
1:  Class do not come with syntherized memberwise initializers.
2:  One class can be built upon (inherit from) another class, gaining its properties and methods
3:  Copies of structs always unique, whereas copies of classes actually point to the same shared data
4:  Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not
5:  Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.
*/

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
//var newGame = Game()
//newGame.score = 10

/**
 How to make one class inherit from another
*/

class Empoyee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) a day")
    }
}

class Developer: Empoyee {
    func work() {
        print("I'm writing code for \(hours) a day")
    }
    override func printSummary() {
        print("A developer works \(hours) a day")
    }
}
class Tester: Developer { // if Developer class has final keywork like Manager class ->  its subclass Tester can not inherit from it
    override func work() {
        print("A tester works \(hours) a day")
    }
}

final class Manager: Empoyee {
    func work() {
        print("I am going to meetings for \(hours) a day")
    }
    override func printSummary() {
        print("A manager works \(hours) a day")
    }
}
//let yen = Developer(hours: 8)
//yen.work()
//yen.printSummary()
//
//let tuan = Manager(hours: 10)
//tuan.work()
//tuan.printSummary()
//
//let thanh = Tester(hours: 8)
//thanh.work()

/**
 How to add initializers for classes
*/

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isConvertible: Bool, isElectric: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric) // super allows us to call up to methods that belong to our parent class
        print("isElectric \(isElectric), isConvertible \(isConvertible)")
    }
} //let teslaX = Car(isConvertible: false, isElectric: true)

class Instrument {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Piano: Instrument {
    var isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
        super.init(name: "Piano")
        print("\(name) - isElectric: \(isElectric)")
    }
} // let piano = Piano(isElectric: true) - Piano - isElectric: true

/**
 How to copy classes
*/

class User {
    var username = "Anonymous"
    
    // deep copy or unique copy
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

//var user1 = User()
//var user2 = user1.copy()
//user2.username = "Maxiromanoff"
//
//print(user1.username)
//print(user2.username)

class Hospital {
    var onCallStaff = [String]()
}
//var londonCentral = Hospital()
//var londonWest = londonCentral
//londonCentral.onCallStaff.append("Dr Harlan")
//londonWest.onCallStaff.append("Dr Haskins")
//print(londonCentral.onCallStaff.count) - 2
//print(londonWest.onCallStaff.count) - 2

/**
How to create a deinitializer for a class
1: Don't use func with deinitializers
2: Deinitializers can never take params or return data
3: Deinitializers run when the last copy of class instance is destroyed
4: Never call deinitializers directly
5: Struct do not have deinitializers
*/

//class User2 {
//    let id: Int
//
//    init(id: Int) {
//        self.id = id
//        print("User \(id): I'm alive!")
//    }
//
//    deinit {
//        print("User \(id): I'm dead!")
//    }
//}
//
//var users = [User2]()
//
//for i in 1...3 {
//    let user = User2(id:i)
//    print("User \(user.id): I'm in control!")
//    users.append(user)
//}
//
//print("Loop is finished!")
//users.removeAll()
//print("Array is clear!")


/**
 How to work with variables inside classes
*/

/**
Summary: https://www.hackingwithswift.com/quick-start/beginners/summary-classes
*/

/**
 Checkpoint 7: https://www.hackingwithswift.com/quick-start/beginners/checkpoint-7
*/

class Animal {
    var legs = 4
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speaks() {
        print("gâu gâu")
    }
}

final class Corgi: Dog {
    override func speaks() {
        print("Corgi barks gâu gâu")
    }
}

final class Poodle: Dog {
    override func speaks() {
        print("Poodle barks gâu gâu")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: 4)
        print("Cat has \(legs) legs, and isTame \(isTame)")
    }
    
    func speaks() {
        print("meow meow")
    }
}

final class Persian: Cat {
    override func speaks() {
        print("Persian says meow meow")
    }
}

final class Lion: Cat {
    override func speaks() {
        print("Lion says meow meow")
    }
}

let shiba = Dog(legs: 4)
let muop = Cat(isTame: true, legs: 4)
shiba.speaks()
muop.speaks()
