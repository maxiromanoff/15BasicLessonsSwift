import Foundation

/**
 How to handle missing data with optionals
*/

var username: String? = nil
username = "Yen"

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty")
}

// case special
let album = "Red"
let albums = ["Reputation", "Red", "1989"]
// using if let to unwrap optional
if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position).")
}

/**
 How to unwrap optionals with guard:
  Swift requires u to use return if a guard check fails
*/


func printSquare(of number: Int?) {
    guard let input = number else {
        print("Missing input")
        return
    }
    print("\(input) * \(input) is \(input * input)")
} // let result = printSquare(of: 3) // 3 * 3 is 9

func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
//let input = 5
//if let doubled = double(number: input) {
//    print("\(input) doubled is \(doubled).")
//}

/**
 How to unwrap optionals with nil coalescing
*/

let captains = [
    "Mavel": "Captiain",
    "Harry": "Potter",
    "Ron": "Weasley"
] //let new = captains["Ron", default: "N/A"]

let tvShows = ["A", "B", "C"]
let favorite = tvShows.randomElement() ?? "None" // print(favorite)

let input = ""
let number = Int(input) ?? 0 //print(number)

/**
 How to handle multiple optionals using optional chaining
*/

let names = ["Harry Potter", "Ron Weasley", "Ginny Weasley"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
//print("Next in line: \(chosen)")

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "No book"
//print(author)

func albumReleased(in year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    case 2017: return "Reputation"
    default: return nil
    }
}
let taylorAlbum = albumReleased(in: 2006)?.uppercased()
//print(taylorAlbum)

let shoppingList = ["eggs", "tomatoes", "grapes"]
let firstItem = shoppingList.first?.appending(" are on my shopping list")
//print(firstItem)

/**
 How to handle function failure with optionals
*/

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

//if let user = try? getUser(id: 22) {
//    print("User: \(user)")
//}

let user = (try? getUser(id: 23)) ?? "Anonymous" //print(user)

/**
    Checkpoint 9
*/

//func getRandomNumber (numbers: [Int]?) -> Int {
//    return numbers?.randomElement() ?? Int.random(in: 1...100)
//}
//let randomNumber = getRandomNumber(numbers: [1,2,3,4])
//print(randomNumber)
//let noElement = getRandomNumber(numbers: [])
//print(noElement)

//var numSet = Set([1,1,3,5,7,9])
//print(numSet)
//
//numSet.insert(10)
//numSet.contains(11)
//print(numSet)

enum LoginErrors: Error {
    case badUserName, badPassword
}

func login(username: String, password: String) throws -> Bool {
    if username.isEmpty {
        throw LoginErrors.badUserName
    }
    if password.isEmpty {
        throw LoginErrors.badPassword
    }
    return true
}

do {
    let result = try login(username: "YenHa", password: "")
    print("Rating: \(result)")
} catch LoginErrors.badUserName {
//    print("bad username")
} catch LoginErrors.badPassword {
//    print("bad password")
}

let team = ["Harry Potter", "Ron Weasley", "Ginny Weasley", "Salazar Slytherin"]

// casual closure
let onlyT = team.filter({(name: String) -> Bool in
    return name.contains("Harry Potter")
})
// trailling closure { name in name.comtains("Weasley")}
let onlyWeasley = team.filter {$0.contains("Weasley")}
//print(onlyT) ["Harry Potter"]
//print(onlyWeasley) ["Ron Weasley", "Ginny Weasley"]

struct Employee {
    let name: String
    var vacationAllowed = 14
    var vationTaken = 0
    
    var vacationRemaining: Int {
        get {
            return vacationAllowed - vationTaken
        }
        set {
            vacationAllowed = vationTaken + newValue
        }
    }
}
//var employee = Employee(name: "Maxiromanoff", vacationAllowed: 7, vationTaken: 2)
//print(employee.vacationRemaining)
//employee.vationTaken = 6
//print(employee.vacationAllowed)

struct BankAccount {
    var funds = 0
    // private (set) does not allow modifing outside struct
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount(funds: 100)
account.funds += 1100
print(account.withdraw(amount: 800))
print(account.funds)

// static properties and methods allow adding directly to the struct
struct Appversion {
    static let version = "1.1"
    static let settings = "settings.json"
} // print(Appversion.settings)
 
class Employee1 {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day")
    }
}

class Developer: Employee1 {
    func work() {
        print("I'm coding for \(hours) hours a day")
    }
    override func printSummary() {
        print("I modify this parent function")
    }
}
//let developer = Developer(hours: 9)
//print(developer.work())
//print(developer.printSummary())

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
    
    func printCar() {
        print("isConvertible: \(isConvertible), isElectric: \(isElectric)")
    }
}

//let car = Car(isElectric: true, isConvertible: false)
//print(car.printCar)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
}

var quote = "   The truth is rarely pure and never simple   "
quote.trim()
