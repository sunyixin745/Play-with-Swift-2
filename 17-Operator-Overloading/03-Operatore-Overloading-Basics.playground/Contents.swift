//: Playground - noun: a place where people can play

import UIKit

struct Vector3{
    
    var x:Double = 0.0
    var y:Double = 0.0
    var z:Double = 0.0
    
    subscript(index:Int) -> Double?{
        
        get{
            switch index{
            case 0: return x
            case 1: return y
            case 2: return z
            default: return nil
            }
        }
        
        set{
            guard let newValue = newValue else{ return }
            
            switch index{
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            default: return
            }
        }
    }
    
    subscript(axis:String) -> Double?{
        
        get{
            switch axis{
            case "x","X": return x
            case "y","Y": return y
            case "z","Z": return z
            default: return nil
            }
        }
        
        set{
            guard let newValue = newValue else{ return }
            
            switch axis{
            case "x","X": x = newValue
            case "y","Y": y = newValue
            case "z","Z": z = newValue
            default: return
            }
        }
    }
}


// left 和 right 是任意名字
func + (left: Vector3, right: Vector3) -> Vector3{
    
    return Vector3(x: left.x + right.x, y: left.y + right.y, z: left.z + right.z)
}

let va = Vector3(x: 1.0, y: 2.0, z: 3.0)
let vb = Vector3(x: 3.0, y: 4.0, z: 5.0)
var vc = va + vb
vc

func - (left: Vector3, right: Vector3) -> Vector3{
    
    return Vector3(x: left.x - right.x, y: left.y - right.y, z: left.z - right.z)
}

vc = vb - va
vc

func * (left: Vector3, right: Vector3) -> Double{
    
    return left.x * right.x + left.y * right.y + left.z * right.z
}

let product = va * vb
product

func * (left: Vector3, a: Double) -> Vector3{
    
    return Vector3(x: left.x * a, y: left.y * a, z: left.z * a)
}

vc = va * -1.0
vc


// +=，使用inout
func += (inout left: Vector3, right: Vector3){
    
//    left.x += right.x
//    left.y += right.y
//    left.z += right.z
    
    // 可以复用之前Vector3的 + 定义
    left = left + right
}

vc += va
vc


// 重载单目运算符，需要标明 prefix
prefix func - (vector: Vector3) -> Vector3{
    
    return Vector3(x: -vector.x, y: -vector.y, z: -vector.z)
}


// 注意：不可以重载 =
