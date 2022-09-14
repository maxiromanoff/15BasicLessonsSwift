import Foundation

/**
 How to check a condition is true or false
*/

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
//    print("It's \(ourName) vs \(friendName)")
} else if ourName > friendName {
//    print("It's \(friendName) vs \(ourName)")
}

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
//print(first < second)


/**
 How to check multiple conditions
*/

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.scooter

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

// Note: https://www.hackingwithswift.com/quick-start/understanding-swift/whats-the-difference-between-if-and-else-if

/**
 How to use switch statements to check multiple conditions
*/

// switch with fallthrough: xét trên xuống, nếu khớp 1 case nào đó vẫn tiếp tục xét tiếp 1 case liền kề. Có thể sử dụng fallthrough bao nhiêu tuỳ ý người dùng
let day = 5
switch day {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}
// result: 5 golden rings

let usingFallthrough = 5
switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

/**
 5 golden rings
 4 calling birds
 3 French hens
 2 turtle doves
 A partridge in a pear tree
*/

/**
 How to use the ternary conditional operator for quick tests
*/

enum Theme {
    case light, dark
}
let theme = Theme.dark
let background = theme == .dark ? "black" : "white"
print(background)
