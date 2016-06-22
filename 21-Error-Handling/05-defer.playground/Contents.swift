//: Playground - noun: a place where people can play

import UIKit


class VendingMachine{
    
    struct Item{
        
        enum Type: String{
            case Water
            case Cola
            case Juice
        }
        
        let type:  Type
        let price: Int
        var count: Int
    }
    
    enum Error: ErrorType{
        case InvalidSelection
        case NotEnoughMoney(Int)
        case OutOfStock(String)
    }
    
    private var items = [   Item(type: .Water, price:2, count:10),
                            Item(type: .Cola, price: 3, count: 5),
                            Item(type: .Juice, price: 5, count: 3)]
    
    
    func vend(itemIndex index: Int, money: Int) throws -> Int{
        
        defer{
            print("Have a nice day:)")
        }
        
        guard index >= 0 && index < items.count else{
            throw VendingMachine.Error.InvalidSelection
        }
        
        let item = items[index]
        
        guard money >= item.price else{
            throw VendingMachine.Error.NotEnoughMoney(item.price)
        }
        
        guard item.count > 0 else{
            throw VendingMachine.Error.OutOfStock(item.type.rawValue)
        }
        
        dispenseItem(index)
        
        return money - item.price
    }
    
    private func dispenseItem(index: Int){
        items[index].count -= 1
        print("Enjoy your",items[index].type.rawValue)
    }
}


let vendingMachine = VendingMachine()

var money = 4
money = (try? vendingMachine.vend(itemIndex: 1, money: money)) ?? money
money

/*
defer 用在退出某个scope必须处理某些事情的时候
最常见的使用场景：文件处理

defer不一定必须用在Error Handling的情况下
但是在处理错误的时候使用 defer 是最常见的情况

defer本质是一种转移控制, 和 break, continue 一样
*/