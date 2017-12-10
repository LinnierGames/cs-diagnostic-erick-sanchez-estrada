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

// Solution for Problem 6

func fibonacci_iterative(num: UInt = 10) {
    
    /// number of steps into the sequence
    var nSteps = 0
    /// current value of num to be printed
    var n: Int = 1
    /// n sub 1
    var n_1: Int = 0
    /// n sub 2
    var n_2: Int = 0
    while (nSteps < num) {
        if nSteps == 0 {
            n = 1
        } else if nSteps == 1 {
            n_1 = n
            n = n + n_1
        } else {
            n_2 = n_1
            n_1 = n
            n = n_1 + n_2
        }
        
        print(n)
        nSteps += 1
    }
}

fibonacci_iterative(num: 7)

fibonacci_iterative()

// Solution for Problem 7

func factorial_recursive(num: UInt) -> UInt {
    if num == 1 {
        return 1
    } else {
        return factorial_recursive(num: num - 1) * num
    }
}

factorial_recursive(num: 4)

// Solution for Problem 8


