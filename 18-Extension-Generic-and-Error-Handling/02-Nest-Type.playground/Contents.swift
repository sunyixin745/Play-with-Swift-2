//: Playground - noun: a place where people can play

import UIKit

struct Point{
    var x = 0.0
    var y = 0.0
}

struct Size{
    var width = 0.0
    var height = 0.0
}

class Rectangle{
    
    var origin = Point()
    var size = Size()
    
    init( origin: Point , size: Size ){
        self.origin = origin
        self.size   = size
    }
}

// extension 中放入 Nested Type, Methods 和 subscript
extension Rectangle{
    
    // extension 中放入 Nested Type
    enum Vertex: Int{
        case LeftTop
        case RightTop
        case RightBottom
        case LeftBottom
    }
    
    func pointAtVertex( v: Vertex ) -> Point{
        
        switch v{
        case .LeftTop:
            return origin
        case .RightTop:
            return Point(x: origin.x + size.width, y: origin.y )
        case .RightBottom:
            return Point(x: origin.x + size.width, y: origin.y + size.height )
        case .LeftBottom:
            return Point(x: origin.x, y: origin.y + size.height )
        }
    }
    
    // extension 中放入 subscript
    subscript(index: Int) -> Point{
        
        assert( index >= 0 && index < 4 , "Index in Rectange Out of Range.")
        return pointAtVertex(Vertex(rawValue: index)!)
    }
}


Rectangle.Vertex.LeftTop

// 以前就见过Nest Type
// String.Index
let str = "Hello World"
let index = str.startIndex.advancedBy(5)
str.substringToIndex(index)

// theme mode的例子


let rect = Rectangle(origin: Point(), size: Size(width: 4, height: 3))
rect.pointAtVertex(.RightBottom)

rect[0]
rect[1]
rect[2]
rect[3]

