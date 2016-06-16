//: Playground - noun: a place where people can play

import UIKit


struct Matrix{
    
    var data:[[Double]]
    let r:Int
    let c:Int
    
    init(row:Int, col:Int){
        self.r = row
        self.c = col
        data = [[Double]]()
        for _ in 0..<r{
            let aRow = Array(count: col, repeatedValue: 0.0)
            data.append(aRow)
        }
    }
    
    subscript(x:Int,y:Int) -> Double{
        
        get{
            assert( x >= 0 && x < r && y >= 0 && y < c , "Index Out of Range")
            return data[x][y]
        }
        
        set{
            assert( x >= 0 && x < r && y >= 0 && y < c , "Index Out of Range")
            data[x][y] = newValue
        }
    }
}

var m = Matrix(row: 2, col: 2)
//m[2,2]
m[1,1]

// 注意区分,不是m[1][1]

// 重载[]，
// 实现魔方
// 实现数据结构，如链表
// 实现数据Table，等等等等
