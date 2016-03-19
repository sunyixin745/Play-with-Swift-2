//: Playground - noun: a place where people can play

import UIKit

func toBinary( var num: Int ) -> String{
    
    var res = ""
    while( num != 0 ){
        res = String(num%2) + res
        num /= 2
    }
    return res
}

toBinary(12)


