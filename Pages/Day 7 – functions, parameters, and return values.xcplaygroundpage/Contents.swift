import Foundation

/**
 How to reuse code with functions
*/

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number) ")
    }
}
/**
 printTimesTables(number: 5, end: 10)
 1 x 5 is 5
 2 x 5 is 10
 3 x 5 is 15
 4 x 5 is 20
 5 x 5 is 25
 6 x 5 is 30
 7 x 5 is 35
 8 x 5 is 40
 9 x 5 is 45
 10 x 5 is 50
*/

/**
 How to return values from functions
*/

func areLettersIdentical (string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
} // print(areLettersIdentical(string1: "abc", string2: "acb")): true

func pythagoras (a: Double, b: Double) -> Double {
    return sqrt(a * a + b * b)
} // print(pythagoras(a: 3, b: 4)): 5.0

/**
 How to return multiple values from functions
*/

func getUser() -> (firstName: String, lastName: String) {
    return (firstName: "Yen", lastName: "Ha")
}

// destructuring
let (firstName, lastName) = getUser() // print("\(firstName) \(lastName)"): Yen Ha

// underscore
//let (firstName, _) = getUser() // print("Name: \(firstName)"): Yen

/**
 How to customize parameter labels
*/

// using underscore
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO, WORLD"
let result = isUppercase(string)

// using param to use externally, and one to use internally.
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(for: 5)
