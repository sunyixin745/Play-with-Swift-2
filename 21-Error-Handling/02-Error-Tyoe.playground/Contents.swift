//: Playground - noun: a place where people can play

import UIKit


// 之前使用可选型表示错误 - 错误时返回空
// 但空不是错误
// 更符合语意的表示：使用Swift的Error Handling机制

// 比如文件读取; 网络连接 等等等等


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
        case OutOfStock
    }
    
    private var items = [   Item(type: .Water, price:2, count:10),
                            Item(type: .Cola, price: 3, count: 5),
                            Item(type: .Juice, price: 5, count: 3)]
    
    
    func vend(itemIndex index: Int, money: Int) throws -> Int{
        
        guard index >= 0 && index < items.count else{
            throw VendingMachine.Error.InvalidSelection
        }
        
        let item = items[index]
        
        guard money >= item.price else{
            throw VendingMachine.Error.NotEnoughMoney(item.price)
        }
        
        guard item.count > 0 else{
            throw VendingMachine.Error.OutOfStock
        }
        
        dispenseItem(index)
        
        return money - item.price
    }
    
    private func dispenseItem(index: Int){
        items[index].count -= 1
        print("Enjoy your",items[index].type.rawValue)
    }
}


