//: [Previous](@previous)

import Foundation

// Solution to Problem 13

func rollDice(nSides: UInt32) -> UInt {
    let random = arc4random_uniform(1000 * nSides)
    
    var result = nSides
    while (result > 0) {
        if random % result == 0 {
            return UInt(result)
        } else {
            result -= 1
        }
    }
    
    return 1
}

rollDice(nSides: 6)

//: [Next](@next)
