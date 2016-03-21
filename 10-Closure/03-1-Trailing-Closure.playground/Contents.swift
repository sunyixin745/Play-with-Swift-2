//: Playground - noun: a place where people can play

import UIKit

var arr:[Int] = []
for _ in 0..<10{
    arr.append(random()%1000)
}

arr.sort({ a , b in return a > b})


// Trailing Closure
arr.sort(){ a , b in
    return a > b
}

arr.sort{ a , b in
    return a > b
}


arr.map{ (var number) -> String in
    var res = ""
    repeat{
        res = String(number%2) + res
        number /= 2
    }while number != 0
    return res
}


