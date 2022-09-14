import Foundation

/**
 How to store truth with Booleans
 */

let isMaxiromanoff = true
let isAuthenticated = false

// function toggle(): true -> false and reverse
var gameOver = false
gameOver.toggle()

//__________________________________

/**
 How to join strings together
 */

let firstPart = "Hello "
let secondPart = "World"
let greeting = firstPart + secondPart

// using + to concat string
let luggageCode = "1" + "2" + "3" + "4" + "5" // => result = "12345"
/**
 Note: Swift can join string by using +, but it combines according to each part such as "12","123",...
 and creates temporary strings to hold "12", "123",... => therefore this way does not bring the efficient performance for program
 */

// using string interpolation
let name = "Maxiromanoff"
let age = 21
let message = "Hello, my name is \(name) and I'm \(age) years old"

// using string interpolation to make caculation
let caculation = "24 * 10 is \(24 * 10)"


/**
 Link for summary Day 1 and Day 2:
 https://www.hackingwithswift.com/quick-start/beginners/summary-simple-data
 */

/**
 Checkpoint 1
 */

let temperatureCelsius = 35.2
let temperatureFahrenheit = ((temperatureCelsius * 9) / 5) + 32
print("\(temperatureCelsius)°C is \(temperatureFahrenheit)°F")
