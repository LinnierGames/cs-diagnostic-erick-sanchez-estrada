//: [Previous](@previous)

import Foundation
import UIKit

// Solution to Problem 10

class Car {
    var numberOfWheels: Int
    var make: String
    var model: String
    var color: UIColor
    var topSpeed: Double
    
    init(numberOfWheels wheels: Int, make: String, model: String, color: UIColor, topSpeed: Double) {
        self.numberOfWheels = wheels
        self.make = make
        self.model = model
        self.color = color
        self.topSpeed = topSpeed
    }
    
    open func honk() {
        print("Beep beep!")
    }
    
    open func description() {
        print("numberOfWheels \(numberOfWheels)")
        print("make \(make)")
        print("model \(model)")
        print("color \(color)")
        print("topSpeed \(topSpeed)")
    }
}

var car = Car(numberOfWheels: 4, make: "Mazda", model: "3", color: UIColor.black, topSpeed: 500)
car.description()

//: [Next](@next)
