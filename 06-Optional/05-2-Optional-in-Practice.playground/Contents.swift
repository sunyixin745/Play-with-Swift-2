//: Playground - noun: a place where people can play

import UIKit


// Int()
var ageInput: String? = "16"

let age = Int(ageInput!)

if let theAgeStr = ageInput,
    age = Int(theAgeStr) where age < 18{
        
    print("\(18-age) years before college")
}


// Optional in String method
var greetings = "Hello"
greetings.rangeOfString("ll")
greetings.rangeOfString("mm")




