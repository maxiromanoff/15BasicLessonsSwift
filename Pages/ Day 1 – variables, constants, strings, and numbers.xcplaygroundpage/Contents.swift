import Foundation

/**
 How to create Strings
 */

// mutiple line
let movie = """
A day in
the life of an
Apple engineer
"""
// quote
let quote: String = "I \"Believe\" in myself"

// count length of string
let myName: String = "maxiromanoff"
let nameLength = myName.count

// uppercased string
let myNickname = "maxiromanoff"
let nicknameUppercased =  myNickname.uppercased()

// hasPrefix()
let isPrefixOfMovieString = movie.hasPrefix("A day in")

// hasSuffix()
let filename = "paris.jpg"
let isImageFile = filename.hasSuffix(".jpg")

//__________________________________

/**
 How to store whole numbers
 */

let number: Int = 10
let bigNumber: Int = 100000000

// using underscores _ : Swift does not actually care aabout the underscores
let reallyBigNumber: Int = 100_000_000

// short operator
var counter: Int = 10
counter += 5
counter -= 10
counter *= 2
counter /= 2

// isMultiple(of:) : hàm xác định một số có phải là bội số của số khác hay không
// nếu a!= 0 && a = b*q => a là bội số của b và b là ước số của a
let firstNumber: Int = 6
let isMutiple = firstNumber.isMultiple(of: 3)

//__________________________________

/**
 How to store decimal numbers
 */

// the way to plus two different types number
let a = 1
let b = 2.0
let c = Double(a) + b // or a + Int(b)

// short operator
var rating: Double = 10.5
rating += 5
rating -= 10
rating *= 2
rating /= 2.5

// keyword for more research: CGFloat
//https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-both-doubles-and-integers


