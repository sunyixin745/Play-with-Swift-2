//: Playground - noun: a place where people can play

import UIKit

var age: Int? = 17
print(age)

age = nil
print(age)


// Optional实际是一个enum
var website: Optional<String> = Optional.Some("imooc.com")
print(website)

website = Optional.None
print(website)

website = .Some("imooc.com")
website = .None

website = "imooc.com"
website = nil


// 从enum的角度看Optional的解包
switch website{
case .None:
    print("No website")
case let .Some(website):
    print("The website is \(website)")
}


// Swift为Optional的解包设置的语法
if let website = website{
    print("The website is \(website)")
}
else{
    print("No website")
}


// enum还有很多有意思的问题值得探讨，比如
// · 在enum中声明方法；
// · enum的associate value类型是自己，需要使用indirect
// · 等等等等
// 以后有机会再向大家介绍