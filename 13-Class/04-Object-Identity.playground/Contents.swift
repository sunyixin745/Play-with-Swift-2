//: Playground - noun: a place where people can play

import UIKit

class Person{
    
    var firstName: String
    var lastName: String
    var career: String?
    
    init(firstName: String, lastName: String, career: String){
        self.firstName = firstName
        self.lastName = lastName
        self.career = career
    }
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String{
        
        return firstName + " " + lastName
    }
}


// 对于class,let也可以修改内部属性
let person = Person(firstName: "Steven", lastName: "Jobs", career: "CEO")
let person2 = person

// Object identity
//person == person2
person === person2


let person3 = Person(firstName: "Steven", lastName: "Jobs", career: "CEO")
person === person3
person !== person3


// Heap & Stack

