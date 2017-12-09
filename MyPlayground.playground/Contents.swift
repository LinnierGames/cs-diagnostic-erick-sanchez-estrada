//: Playground - noun: a place where people can play

import UIKit

// Solution to Problem 3

// take in two ints
// create an interator of the first int, allowing it to be mutable
// iterate while the first int is smaller than or equal than the second int
// - nested if else of the following
// -- if the iterator has a remainder of zero for both divisors of 3 and 5 print
//    fizzbuzz, else
// -- if the iterator has a remainder of zero for 5 print buzz, else
// -- if the iterator has a remainder of zero for 3 print fizz, else
// -- print the iterator
// - increment the interator and loop again
//

// Solution to Problem 5

func fizzbuzz(start: Int, end: Int) {
    var number = start
    while (number <= end) {
        if number % 3 == 0, number % 5 == 0 {
            print("fizzbuzz")
        } else if number % 5 == 0 {
            print("buzz")
        } else if number % 3 == 0 {
            print("fizz")
        } else {
            print(number)
        }
        
        number += 1
    }
}

fizzbuzz(start: 1, end: 15)

