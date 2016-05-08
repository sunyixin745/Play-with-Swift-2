//: Playground - noun: a place where people can play

import UIKit


// Associate Value 和 raw value 只能存在一个
enum ATMStatus{
    case Success(Int)
    case Error(String)
    case Waiting    // 可以没有Associate Value
}


// 使用 Associate Value
var balance = 1000

func withdraw( amount: Int ) -> ATMStatus{
    if balance >= amount{
        balance -= amount
        return .Success(balance)
    }
    else{
        return .Error("Not enough money")
    }
}

let result = withdraw(100)
switch result{
case let .Success(newBalance):
    print("\(newBalance) Yuan left in your account.")
case let .Error(errorMessage):
    print("Error: \(errorMessage)")
case .Waiting:
    print("waiting for processing")
}


