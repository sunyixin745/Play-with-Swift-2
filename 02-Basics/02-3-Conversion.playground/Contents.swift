//: Playground - noun: a place where people can play

import UIKit

let x: UInt16 = 100
let y: UInt8  = 20
// You can not directly add two different type, even if they're all int.
//x + y

let imUInt16 = x + UInt16(y)
let imUInt8 = UInt8(x) + y


let a:Float = 3
//let b:Int   = 3.0

let integer = 3
let fraction = 0.1415926
let pi = Double(integer) + fraction