import Foundation

/**
 How to use type annotations
*/

// String
let playerName: String = "Roy"

// Int
let number: Int = 24

// Double
let pi: Double = 3.141

// Boolean
var isAuthenticated: Bool = true

// Array holds String
var albums: [String] = ["Red", "Fearless"]

// Dictionary holds Keys as String, Values as String
var user: [String: String] = ["id": "@twostraws"]

// Set holds String
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

// Enums: the annotation of enums is the name of enum itself
enum UIStyle {
    case light, dark, system
}

var style: UIStyle = UIStyle.light
style = .system

/**
    Summary: https://www.hackingwithswift.com/quick-start/beginners/summary-complex-data
*/

/**
    Checkpoint 2: https://www.hackingwithswift.com/quick-start/beginners/checkpoint-2
*/

let beverageNames = ["Latte", "Americano", "Cold Brew", "Tea", "Vietnamese Coffee", "Latte"]
let countBeverages = beverageNames.count
let removedDuplicateItem = Set(beverageNames)

print("""
The number of beverages are \(countBeverages)
The number of unique beverage are \(removedDuplicateItem.count)
""")
