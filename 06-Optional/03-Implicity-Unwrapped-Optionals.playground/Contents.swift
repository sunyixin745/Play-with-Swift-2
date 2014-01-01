//: Playground - noun: a place where people can play

import UIKit

var errorMessage: String! = "Not found"
"The message is " + errorMessage

// String! 是危险的
errorMessage = nil
//"The message is " + errorMessage


// 主要应用在类的成员变量的初始化上
class Error{
    
    let errorCode: Int
    let errorMessage: String!
    
    init( theErrorCode: Int ){
        errorCode = theErrorCode
        switch errorCode{
        case 404:
            errorMessage = "Not found"
        case 403:
            errorMessage = "Forbidden"
        default:
            errorMessage = "Other error"
        }
    }
    
    func show(){
        print("The errorMessage is " + errorMessage)
    }
}

let myError = Error(theErrorCode:404)
myError.show()
