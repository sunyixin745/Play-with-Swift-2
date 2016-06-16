//: Playground - noun: a place where people can play

import UIKit

func swapTwoInt(inout a: Int , inout _ b: Int){
    (a,b) = (b,a)
}

var a: Int = 0
var b: Int = 6
swapTwoInt(&a, &b)
a
b

func swapTwoDouble(inout a: Double , inout _ b: Double){
    (a,b) = (b,a)
}


// 使用generic
// generic function
func swapTwoThings<T>(inout a: T , inout _ b: T){
    (a,b) = (b,a)
}

var hello = "Hello"
var bye = "Bye"
swapTwoThings(&hello, &bye)
hello
bye


// generic type
let arr = Array<Int>()

struct Stack<T>{
    
    var items = [T]()
    
    func isEmpty() -> Bool{
        return items.count == 0
    }
    
    mutating func push(item: T){
        items.append(item)
    }
    
    mutating func pop() -> T?{
        
        guard !self.isEmpty() else{
            return nil
        }
        
        return items.removeLast()
    }
    
}

extension Stack{
    
    func top() -> T?{
        return items.last
    }
    
    func count() -> Int{
        return items.count
    }
}
