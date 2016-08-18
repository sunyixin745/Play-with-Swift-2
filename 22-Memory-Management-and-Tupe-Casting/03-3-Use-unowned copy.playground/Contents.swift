//: Playground - noun: a place where people can play

import UIKit

class Person{
    
    var name: String
    var creditCard: CreditCard?
    var printBankInfo: (() -> ())?
    
    init(name: String){
        self.name = name
        
        printBankInfo = {
            print("==========")
            print("Name:",name)
            print("Credit Card:",self.creditCard)
            print("==========")
        }
        print(name,"is initialized")
    }
    
    deinit{
        print("Person",name,"is being deinitialized!")
    }
}

class CreditCard: CustomStringConvertible{
    
    let number: String
    unowned let customer: Person
    var description: String{ return number}
    
    init(number: String, customer: Person){
        self.number = number
        self.customer = customer
    }
    
    deinit{
        print("Credit Card",number,"is being deinitialized!")
    }
}

var liuyubobobo: Person? = Person(name: "liuyubobobo")
var goldenCard: CreditCard? = CreditCard(number: "12345678", customer: liuyubobobo!)
liuyubobobo!.creditCard = goldenCard!

liuyubobobo = nil

// unowned is unsafe!

//goldenCard!.customer
//goldenCard

goldenCard = nil

