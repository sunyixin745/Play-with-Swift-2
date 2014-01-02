//: Playground - noun: a place where people can play

import UIKit

// for-in
for i in -99...99{
    i*i
}

// for
for var i = -99 ; i <= 99 ; i++ {
    i*i
}

// 将循环初始条件放在外面
var index = -99
for ; index <= 99 ; index++ {
    index*index
}

// 循环变量的更改可以自定义
for var a = -6.28 ; a <= 6.28 ; a += 0.1{
    sin(a)
}

index = -99
var step = 1
for ; index <= 99 ; index += step {
    index*index
    step *= 2
}
