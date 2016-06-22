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
    
    func display(){
        print("Want something to drink?")
        print("Input the item index, please:")
        for i in 0..<items.count{
            print( i , "-" , items[i].type.rawValue)
        }
        print("=============================")
    }
}

let machine = VendingMachine()
machine.display()

var pocketMoney = 3


// Handle Error by try!
//pocketMoney = try! machine.vend(1, money: pocketMoney)
//print(pocketMoney,"Yuan left")


// Handle Error by try?
//try? machine.vend(itemIndex: 1, money: pocketMoney)


// Handle Error by do catch
do{
    pocketMoney = try machine.vend(itemIndex: 1, money: pocketMoney)
    print(pocketMoney,"Yuan left")
}
//catch{
//    print("Error occured during vending.")
//}
catch VendingMachine.Error.InvalidSelection{
    print("Invalid Selection")
}
catch VendingMachine.Error.NotEnoughMoney(let price){
    print("Not Enough Money." , price , "Yuan needed.")
}
catch VendingMachine.Error.OutOfStock{
    print("Out of Stock")
}
