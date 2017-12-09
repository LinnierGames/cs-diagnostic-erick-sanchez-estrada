//: [Previous](@previous)

import Foundation

/* popluating collections */

var settings: [String: Any] = [
    "user_did_launch_for_first_time": true,
    "user_did_accept_authorization": false
]

var partyMembers: [String] = [
    "Erick",
    "Leslie",
    "Erica",
    "Derick",
    "Graham",
    "Marty",
    "Jennifer",
    "Josh",
    "Jenny"
]

// tuples in swift are a bit different I believe
var aPerson = (firstName: "Erick", lastName: "Sanchez Estrada")

/* Accessing each collection */

if settings["user_did_launch_for_first_time"] as! Bool == false {
    print("Welcome to your new experience!")
    settings["user_did_launch_for_first_time"] = true
} else {
    print("Would you like to log in?")
}

print("Here is a list of members attending:")
for member in partyMembers {
    print(member)
}

print("Hello! I would like to introduce you to \(aPerson.firstName) \(aPerson.lastName)")

//: [Next](@next)
