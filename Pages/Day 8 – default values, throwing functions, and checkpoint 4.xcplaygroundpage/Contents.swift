import Foundation

/**
    How to provide default values for parameters
*/

//func printTimesTables(for number: Int, end: Int = 12) {
//    for i in 1...end {
//        print("\(i) x \(number) is \(i * number)")
//    }
//} // printTimesTables(for: 5, end: 5) |  printTimesTables(for: 8)

// keepingCapacity method of removeAll()
//var characters = ["Lana", "Pam", "Ray", "Sterling"]
//print(characters.count)
//characters.removeAll(keepingCapacity: true)
//print(characters.count)

/**
 How to handle errors in functions
*/

// enums with Error protocol

//enum PasswordError: Error {
//    case short, obvious
//}

// throw in function
//func checkPassword(_ password: String) throws -> String {
//    if password.count < 5 {
//        throw PasswordError.short
//    }
//    if password == "12345" {
//        throw PasswordError.obvious
//    }
//    if password.count < 8 {
//        return "OK"
//    } else if password.count < 10 {
//        return "Good"
//    } else {
//        return "Excellent"
//    }
//}

// using do...catch
//do {
//    try someRiskyWork()
//} catch {
//    print("Handle errors here")
//}

//let string = "12"
//do {
//    let result = try checkPassword(string)
//    print("Password rating: \(result)") // 123456
//} catch PasswordError.short {
//    print("Please use a longer password.") // 12
//} catch PasswordError.obvious {
//    print("I have the same combination on my luggage!") // 12345
//} catch {
//    print("There was an error. \(error.localizedDescription)")
//}

/**
    Checkpoint 4
*/

enum RootError: Error {
    case tooLow, tooHigh, notFound
}

func squareRoot(of number: Int) throws -> Int {
    if number < 1 {
        throw RootError.tooLow
    }
    if number > 10_000 {
        throw RootError.tooHigh
    }
    
    for i in 1...10_000 {
        if i * i == number {
            return i
        }
    }
    throw RootError.notFound
}

let number = 100
do {
    let root = try squareRoot(of: number)
    print("The square root of \(number) is \(root).")
} catch RootError.tooLow {
    print("\(number) is too low")
} catch RootError.tooHigh {
    print("\(number) is too high")
} catch RootError.notFound {
    print("\(number) has not the square root")
} catch {
    print("Sorry, there was a problem")
}

