//: Playground - noun: a place where people can play

import UIKit


var user = ["name":"liuyubobobo", "password":"liuyubo", "occupation":"programmer"]

// let的字典是不可修改的

// 修改值
user["occupation"] = "freelancer"
user.updateValue("immoc", forKey: "password")

let oldPassword = user.updateValue("immoc", forKey: "password")
if let oldPassword = oldPassword, newPassword = user["password"]{
    print("注意：修改后的密码和之前一样，可能导致安全问题！")
}


// 添加 键-值 数据对
user["email"] = "liuyubobobo@gmail.com"
user

user.updateValue("http://liuyubobobo.com", forKey: "website")
user


// 删除 键-值 数据对
user["website"] = nil
if let email = user.removeValueForKey("email"){
    print("电子邮箱 \(email) 删除成功")
}

user.removeAll()



