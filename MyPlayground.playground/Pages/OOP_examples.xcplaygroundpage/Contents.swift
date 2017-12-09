//: [Previous](@previous)

import Foundation
import UIKit

// Solution to Problem 12

class Automobile {
    var numberOfWheels: Int
    var make: String
    var model: String
    var color: UIColor
    var topSpeed: Double
    
    convenience init(color: UIColor) {
        self.init(numberOfWheels: 4, make: "", model: "", color: color, topSpeed: 0)
    }
    
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

class Car: Automobile {
    convenience init(color: UIColor) {
        self.init(numberOfWheels: 4, make: "", model: "", color: color, topSpeed: 0)
    }
}

class MotoCycle: Automobile {
    convenience init(color: UIColor) {
        self.init(numberOfWheels: 2, make: "", model: "", color: color, topSpeed: 0)
    }
}

class SemiTruck: Automobile {
    convenience init(color: UIColor) {
        self.init(numberOfWheels: 16, make: "", model: "", color: color, topSpeed: 0)
    }
}

var car = Car(color: UIColor.black)
car.description()

var truck = SemiTruck(color: UIColor.blue)
truck.description()

var moto = MotoCycle(color: UIColor.blue)
moto.description()

//: [Next](@next)
