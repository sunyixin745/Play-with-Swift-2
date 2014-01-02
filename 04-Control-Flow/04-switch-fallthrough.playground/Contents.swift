//: Playground - noun: a place where people can play

import UIKit

let point = (0,0)
switch point{
case (0,0):
    print("It's origin!")
    fallthrough
case (_,0):
    print("It's on the x-axis.")
    fallthrough
case (0,_):
    print("It's on the y-axis.")
    fallthrough
case (-2...2,-2...2):
    print("It's near the origin.")
    fallthrough
default:
    print("It's just an ordinary point.")
}

