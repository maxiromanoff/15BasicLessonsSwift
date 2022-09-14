import Foundation

/**
    How to store ordered data in arrays
    Note:  Arrays are ordered collections of values.
 */

var familyMember = Array<String>()
familyMember.append("Parents")
familyMember.append("Brother")
familyMember.append("Me")

var score = [Int]()
score.append(10)
score.append(25)

// count(): like length function in javascipt
var exampleArray = [1,2,3,4,5]
exampleArray.count //5

// reverse():
/**
    Note:  The result is not performed on the array the method is called on and must be put into its own variable.
 */

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()

// Sorting an Array
var number = [6,5,3,2,4,1]
let sortedNumber = number.sorted() // [1, 2, 3, 4, 5, 6]

// removing
var characters = ["Lana", "Pam", "Ray", "Sterling"]
let countCharacters = characters.count // 4

let removeThirdItem = characters.remove(at: 2) // 3

let removeAllItems: () = characters.removeAll() // 0

// contains(): check whether or not an item exists in array
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
let frozenInList = bondMovies.contains("Frozen") // false

//__________________________________

/**
  How to store and find data in dictionaries
  Note: Dictionaries are an unordered collection of keys and values.Values relate to unique keys and must be of the sametype.
 */

// create a dictionary
var nameOfIntergers = [Int: String]() // or var nameOfIntergers: [Int: String] = [:]
nameOfIntergers[16] = "sixteen"
nameOfIntergers[1] = "one" // result: [1: "one", 16: "sixteen"]

// accessing values
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

let employeeInfomation = "Name: \(employee["name", default: "unknown"]), job: \(employee["job",default: "unknown"]), location: \(employee["location", default: "unknown"])" // Name: Taylor Swift, job: Singer, location: Nashville

// count(), isEmpty()
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
let countAirPortsInDict = "The airports in the dictionary is \(airports.count) items."

let hasItemsInDict = "The dict has items, \(airports.isEmpty)"

// update the value for the particular key: updateValue(_forKey:) method
let newValueForDUB = airports.updateValue("Dublin Airport", forKey: "DUB") //print airports: ["YYZ": "Toronto Pearson", "DUB": "Dublin Airport"]

// remove a key-value pair from a dictionary, remove all

// #1: assigning a value of nil for the key
airports["HCM"] = "Tan Son Nhat" // print airports: ["HCM": "Tan Son Nhat", "YYZ": "Toronto Pearson", "DUB": "Dublin Airport"]
airports["HCM"] = nil // print airports: ["YYZ": "Toronto Pearson", "DUB": "Dublin Airport"]

// #2: removeValue(_forKey:) method
airports["HNA"] = "Noi Bai" // print airports: ["YYZ": "Toronto Pearson", "DUB": "Dublin Airport", "HNA": "Noi Bai"]
airports.removeValue(forKey: "HNA") // print airports: ["YYZ": "Toronto Pearson", "DUB": "Dublin Airport"]

// #3: removeAll() method
airports.removeAll() // print airports: [:]

// Iterating over a dict
var bookShelf = ["DDD": "Dai Duong Den", "CDHG": "Con Duong Hoi Giao", "TLMCL": "Toi La Mot Con Lua", "XBLVD": "Xach Balo Len Va Di"]

for(bookCode, bookName) in bookShelf {
//    print("\(bookCode): \(bookName)")
}
/**
 CDHG: Con Duong Hoi Giao
 TLMCL: Toi La Mot Con Lua
 XBLVD: Xach Balo Len Va Di
 DDD: Dai Duong Den
 */

// accessing key or value
for bookCode in bookShelf.keys {
//    print("Book code: \(bookCode)")
}
/**
 Book code: DDD
 Book code: TLMCL
 Book code: XBLVD
 Book code: CDHG
 */

for bookName in bookShelf.values {
//    print("Book name: \(bookName)")
}
/**
 Book name: Xach Balo Len Va Di
 Book name: Toi La Mot Con Lua
 Book name: Con Duong Hoi Giao
 Book name: Dai Duong Den
 */

//
let bookCode = [String](bookShelf.keys) // ["XBLVD", "DDD", "TLMCL", "CDHG"]
let bookName = [String](bookShelf.values) // ["Dai Duong Den", "Xach Balo Len Va Di", "Con Duong Hoi Giao", "Toi La Mot Con Lua"]

// https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-default-values-for-dictionaries


/**
  How to use sets for fast data lookup
  Note:  Sets are unordered collections of unique values
 */

// create a set
var actors = Set<String>()
actors.insert("Mr.A")
actors.insert("Ms.B") // ["Mr.A", "Ms.B"]

// accessing and modifying a set
// #1: count
var musicGenres = Set(["Rock", "Classical", "R&B", "Ballad"])
let countMusicGenres = "I have \(musicGenres.count) favorite music genres" // I have 4 favorite music genres

// #2: isEmpty
let isEmptyMusicGenreSet = musicGenres.isEmpty // false

// #3: insert -> this is one of the differences with array
musicGenres.insert("Jazz") // print(musicGenres): ["R&B", "Rock", "Classical", "Ballad", "Jazz"]

// #4: remove & removeAll
let removedRockGenre = musicGenres.remove("Rock") // returns the removed value, or returns nil if the set didn’t contain it: print(removedRockGenre): Rock

// #5: contain: return true/false
let hasRockInSet = musicGenres.contains("Rock") // false

// Iterating over a Set
for genre in musicGenres {
    print("\(genre)")
}
/**
 R&B
 Classical
 Ballad
 Jazz
 */

for genre in musicGenres.sorted(){
    print("\(genre)")
}
/**
 Ballad
 Classical
 Jazz
 R&B
 */

/**
    How to create and use enums
 */

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

// enums with Switch Statement
enum CompassPoint {
    case north
    case south
    case west
    case east
}

var directionTohead = CompassPoint.west
directionTohead = .north
switch directionTohead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch our for tiger")
case .west:
    print("Where the skies are blue")
case .east:
    print("Where the sun rises")
}
