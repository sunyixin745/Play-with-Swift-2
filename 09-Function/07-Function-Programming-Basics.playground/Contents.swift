//: Playground - noun: a place where people can play

import UIKit

var scores = [65, 91, 45, 97, 87, 72, 33]

// map
func changeScore(score: Int) -> Int{
    return score + 3
}
scores.map(changeScore)

func isPassOrFail(score: Int) -> String{
    return score < 60 ? "Fail" : "Pass"
}
scores.map(isPassOrFail)


// filter
func pass(score: Int) -> Bool{
    return score < 60
}
scores.filter(pass)


// reduce
func add(num1: Int , _ num2: Int) -> Int{
    return num1 + num2
}
scores.reduce(0, combine: add)
scores.reduce(0, combine: +)

func concatenate( str: String , num: Int ) -> String{
    return str + String(num) + " "
}
scores.reduce("", combine: concatenate)
