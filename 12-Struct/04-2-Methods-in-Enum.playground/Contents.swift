//: Playground - noun: a place where people can play

import UIKit


struct Point{
    let x: Int
    let y: Int
}


// enum也可以有方法
enum Direction{
    
    case North
    case South
    case East
    case West
    
    func goFrom(point: Point) -> Point{
        
        switch self{
        case .North:
            return Point(x: point.x-1, y: point.y)
        case .South:
            return Point(x: point.x+1, y: point.y)
        case .East :
            return Point(x: point.x, y: point.y+1)
        case .West :
            return Point(x: point.x, y: point.y-1)
        }
    }
}


let location = Point(x: 0, y: 0)
let direction:Direction = .East
direction.goFrom(location)




