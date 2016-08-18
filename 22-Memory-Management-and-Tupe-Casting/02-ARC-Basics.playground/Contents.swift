//: Playground - noun: a place where people can play

import UIKit

class Person{
    
    var name: String
    
    init(name: String){
        self.name = name
        print(name,"is initialized")
    }
    
    deinit{
        print(name,"is being deinitialized!")
    }
}

var person1: Person? = Person(name: "liuyubobobo")
var person2: Person?
var person3: Person?

person2 = person1
person3 = person1

person1 = nil
person2 = nil
person3 = nil

