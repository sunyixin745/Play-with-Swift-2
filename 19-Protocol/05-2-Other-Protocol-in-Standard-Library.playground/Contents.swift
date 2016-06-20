//: Playground - noun: a place where people can play

import UIKit


// CustomStringConvertible and BooleanType
struct Record: Equatable, Comparable, CustomStringConvertible, BooleanType{
    
    var wins: Int
    var losses: Int
    
    var description: String{
        return "Wins: " + String(wins) + " , Losses: " + String(losses)
    }
    
    var boolValue: Bool{
        return wins > losses
    }
}
// 必须紧跟着写
func ==(left: Record, right: Record) -> Bool{
    return left.wins == right.wins && left.losses == right.losses
}
func <(left: Record, right: Record) -> Bool{
    if left.wins != right.wins{
        return left.wins < right.wins
    }
    return left.losses > right.losses
}
func <=(left: Record, right: Record) -> Bool{
    return left < right || left == right
}
func >(left: Record, right: Record) -> Bool{
    return !(left <= right)
}
func >=(left: Record, right: Record) -> Bool{
    return !(left < right)
}


let record = Record(wins: 10, losses: 5)

print( record )

if record{
    print("Great!")
}


//
extension Int: BooleanType{
    public var boolValue: Bool{
        return self != 0
    }
}

var wins = 0
if !wins{
    print("You never win!")
}

