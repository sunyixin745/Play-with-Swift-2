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
    
    subscript(x: Int, y: Int) -> Double{
        
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
struct Room{
    let info: String
}

struct Floor{
    let level: Int
    var rooms: [Room]
    
    subscript(index: Int) -> Room{
        assert( index >= 1 && index <= rooms.count , "Room Index Out of Range")
        return rooms[index-1]
    }
}

class Building{
    let levelNumber: Int
    var floors: [Floor]
    
    init(levelNumber: Int, roomNumber: Int){
        self.levelNumber = levelNumber
        floors = [Floor]()
        for l in 1...levelNumber{
            var floor = Floor(level: l, rooms: [])
            for _ in 1...roomNumber{
                let roomInfo = String(random())
                let room = Room(info: roomInfo)
                floor.rooms.append(room)
            }
            floors.append(floor)
        }
    }
    
    subscript(index:Int) -> Floor{
        assert( index >= 1 && index <= levelNumber , "Floor Index Out of Range")
        return floors[index-1]
    }
}

let building = Building(levelNumber: 10, roomNumber: 20)
building[3][7].info


// 重载[]，
// 实现魔方
// 实现数据结构，如链表
// 实现数据Table，等等等等
