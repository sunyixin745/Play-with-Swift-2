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
    
    func display(){
        print("Want something to drink?")
        print("Input the item index, please:")
        for i in 0..<items.count{
            print( i , "-" , items[i].type.rawValue)
        }
        print("=============================")
    }
    
    func itemIndex(itemName name: String) -> Int?{
        
        guard let theItemType = VendingMachine.Item.Type(rawValue:name) else{
            return nil
        }
        
        for (index,item) in items.enumerate(){
            
            if item.type == theItemType{
                return index
            }
        }
        
        return nil
    }
}


let vendingMachine = VendingMachine()
let shoppinglist = ["Water":3 , "Cola":10 , "Juice":3]


func shoppingByVendingMaching( vendingMachine: VendingMachine, shoppinglist: [String:Int], money: Int) throws -> Int{
    
    var money = money
    for (itemName,num) in shoppinglist{
        
        guard let itemIndex = vendingMachine.itemIndex(itemName: itemName) else{
            continue
        }
        
        for _ in 0..<num{
            do{
                money = try vendingMachine.vend(itemIndex: itemIndex, money: money)
            }
            catch VendingMachine.Error.OutOfStock(let itemName){
                print(itemName,"out of stock.")
                break
            }
        }
    }
    
    return money
}

var money = 100

do{
    money = try shoppingByVendingMaching(vendingMachine, shoppinglist: shoppinglist, money: money)
    print("After shopping,",money,"Yuan left.")
}
catch VendingMachine.Error.InvalidSelection{
    print("Invalid Selection")
}
catch VendingMachine.Error.NotEnoughMoney(let moneyNeeded){
    print("Not enough money.",moneyNeeded,"Yuan needed.")
}
catch VendingMachine.Error.OutOfStock{
    print("Out of stock")
}

