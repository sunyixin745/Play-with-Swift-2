//: Playground - noun: a place where people can play

import UIKit

var arr:[Int] = []
for _ in 0..<10{
    arr.append(random()%1000)
}

arr.sort({ $0 > $1})


// Trailing Closure
arr.sort(){ $0 > $1}

arr.sort{ $0 > $1 }


arr.map{ (var number) -> String in
    var res = ""
    repeat{
        res = String(number%2) + res
        number /= 2
    }while number != 0
    return res
}


