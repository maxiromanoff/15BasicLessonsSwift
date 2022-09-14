import Foundation

/**
Getter & Setter
*/

class Weight {
    var kilograms: Double = 0
    var pounds: Double {
        get {
            return kilograms * 2.205
        }
        set {
            kilograms = newValue / 2.205
        }
    }
}

//let weight = Weight()
//weight.kilograms = 100
//print(weight.pounds) // The getter method is invoked: 220.5
//
//weight.pounds = 315
//print(weight.kilograms) // The setter method is invoked: 142.85714285714286
//print(weight.pounds) // 315.0

/**
 Initializers
*/

struct Celsius {
    var temperatureInCelsius: Double
    
    init(fromFarenheit farenheit: Double) {
        temperatureInCelsius = (farenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}

let boilingPointOfWater = Celsius(fromFarenheit: 212.0)
print(boilingPointOfWater.temperatureInCelsius)

let freezingPointOfWater = Celsius(fromKelvin: 273.15)
print(freezingPointOfWater.temperatureInCelsius)

// Initializer withour argument label
let bodyTemperature = Celsius(37.5)
print(bodyTemperature)

// parameter name & argument label
struct Color {
    let red, blue, green: Double
    init(red: Double, blue: Double, green: Double) {
        self.red = red
        self.blue = blue
        self.green = green
    }
}
let color = Color(red: 0.8, blue: 1.2, green: 1.5)

// Optional Property Types
class SurveyQuestion {
    var text: String
    var response: String?
    
    init(text: String) {
        self.text = text
    }
    
    func ask() {
        print(text)
    }
}
//let cheeseQuestion = SurveyQuestion(text: "Do you love cheese?")
//cheeseQuestion.ask()
//cheeseQuestion.response = "No, I don't"

//Assigning Constant Properties During Initialization

class SurveyQuestion2 {
    let text: String
    var response: String?
    
    init(question: String) {
        self.text = question
    }
    
    func ask() {
        print(text)
    }
}
//let beefQuestion = SurveyQuestion2(question: "Do you love beef?")
//beefQuestion.ask()
//beefQuestion.response = "Yes, I do"

// Memberwise Initializers for Structure Types
struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    
    init() {}
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        
        self.init(origin: Point(x: originX, y: originY), size:size)
    }
}

let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
print(originRect)
