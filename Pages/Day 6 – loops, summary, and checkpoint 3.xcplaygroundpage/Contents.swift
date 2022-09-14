import Foundation

/**
 How to use a for loop to repeat work
*/

// Note: x...y - it creates a range that starts at whatever number x is, and counts up to and including whatever number y is
for i in 1...9 {
//    print("The \(i) times table:")

    for j in 1...9 {
//        print("  \(j) x \(i) is \(j * i)")
    }
}

for i in 1..<5 {
//    print("Counting 1 up to 5: \(i)")
}

// using underscore
var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
} // result: Haters gonna hate hate hate hate hate

/**
 How to use a while loop to repeat work
*/

//var countdown = 10
//while countdown > 0 {
//    print("\(countdown)…")
//    countdown -= 1
//}
//print("Blast off!")

//var roll = 0
//while roll != 20 { // carry on looping until we reach 20
//    // roll a new dice and print what it was
//    roll = Int.random(in: 1...20)
//    print("I rolled a \(roll)")
//}
//print("Critical hit!") // if we're here it means the loop ended – we got a 20!

/**
 How to skip loop items with break and continue
*/

// Note: continue - If we don’t want to do anything in the current iteration and would like to forward to the next one, we can use the continue directive.
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]
for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    //print("Found picture: \(filename)"): Found picture: me.jpg, Found picture: sophie.jpg
}

// Note: break - jumps out of the loop immediately and skips all remaining iterations
let number1 = 4
let number2 = 14
var multiples = [Int]()
for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
} // print(multiples): [28, 56, 84, 112, 140, 168, 196, 224, 252, 280]

/**
    Checkpoint 3: https://www.hackingwithswift.com/quick-start/beginners/checkpoint-3
*/

for number in 1..<101 {
    if number.isMultiple(of: 3) && number.isMultiple(of: 5) {
        print("\(number) is FizzBuzz")
    } else if number.isMultiple(of: 3) {
        print("\(number) is Fizz")
    } else if number.isMultiple(of: 5) {
        print("\(number) is Buzz")
    } else {
        print("\(number)")
    }
}
