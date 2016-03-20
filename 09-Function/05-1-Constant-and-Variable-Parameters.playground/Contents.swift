//: Playground - noun: a place where people can play

import UIKit

// 参数前加入var关键字，使得参数可以在函数体内被改变
func toBinary( var num: Int ) -> String{
    
    var res = ""
    repeat{
        res = String(num%2) + res
        num /= 2
    }while num != 0
    return res
}

toBinary(12)


// var参数不代表其改变可以延续到函数体外面
var x = 100
toBinary(x)
x
