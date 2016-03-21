//: Playground - noun: a place where people can play

import UIKit

var arr:[Int] = []
for _ in 0..<100{
    arr.append(random()%1000)
}

arr.sort{
    abs($0-500) < abs($1-500)
}


// 数值捕获
var num = 300
arr.sort{
    abs($0-num) < abs($1-num)
}

