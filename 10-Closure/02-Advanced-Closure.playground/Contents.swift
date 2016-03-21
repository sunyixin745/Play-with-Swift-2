//: Playground - noun: a place where people can play

import UIKit

var arr:[Int] = []
for _ in 0..<100{
    arr.append(random()%1000)
}


// 使用自定义比较函数排序
func biggerNumberFirst(a:Int , _ b:Int) ->Bool{
    return a > b
}

arr.sort(biggerNumberFirst)


// 使用闭包排序
arr.sort({ (a:Int , b:Int) -> Bool in
    return a > b
})


// 闭包内如果只有一行代码，可以放在同一行
arr.sort({ (a:Int , b:Int) -> Bool in return a > b})


// 自动获得参数和返回值类型
arr.sort({ a , b in return a > b})

// 可以省略返回值
arr.sort({ a , b in a > b})

// 简化参数名
arr.sort({ $0 > $1})


// 符号作为函数
arr.sort(>)
