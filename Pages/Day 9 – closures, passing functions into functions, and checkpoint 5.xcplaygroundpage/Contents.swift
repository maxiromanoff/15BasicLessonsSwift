import Foundation

/**
 How to create and use closures
*/

func greetUser() {
    print("Hello")
}
var greetCopy = greetUser
greetCopy()

let sayHello = { (name: String) -> String in
    return "Hi \(name)"
} //print(sayHello("Yen"))

/**
 How to use trailing closures and shorthand syntax
*/

let team  = ["Gloria", "Suzanne", "Piper", "Tasha"]
let reverseTeam = team.sorted {$0 > $1} //print(reverseTeam)

/**
 How to accept functions as parameters
*/

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = Array<Int>()
    for _ in 0..<size {
        let number = generator()
        numbers.append(number)
    }
    return numbers
}

func generateNumber() -> Int {
    return Int.random(in: 1...10)
}

let newRolls = makeArray(size: 10, using: generateNumber) // print(newRolls): [5, 6, 7, 4, 10, 5, 4, 9, 5, 3]

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

func repeatAction(count: Int, action: () -> Void) {
    for _ in 0..<count {
        action()
    }
}

repeatAction(count: 2) {
    print("Hello, world!")
}

func goCamping(to action: () -> Void) {
    print("We're going camping!")
    action()
}
goCamping {
    print("Sing songs")
    print("Put up tent")
    print("Attempt to sleep")
}

/**
    Checkpoint 5
*/

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// Cach 1
func checkpoint(numbers: [Int]) {
    let noEvenNumbers = numbers.filter {$0 % 2 != 0}.sorted()
    noEvenNumbers.map {"\($0) is a lucky number"}.forEach {item in print("\(item)")}
}
checkpoint(numbers: luckyNumbers)

// Cach 2
func isOdd(number: Int) -> Bool {
    return number % 2 != 0
}

func luckyString(_ number: Int) -> String {
    return "\(number) is a lucky number"
}

func printValue(_ string: String) {
    print(string)
}
luckyNumbers.filter(isOdd).sorted().map(luckyString).forEach(printValue)
