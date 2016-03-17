//: Playground - noun: a place where people can play

import UIKit

// 集合的初始化
// 必须显示声明类型，不然会被认为是数组
var skillsOfA: Set<String> = ["swift","OC"]
var skillsOfB: Set<String> = ["HTML","CSS","Javascript"]
var skillsOfC: Set<String> = []
var skillsOfD = Set<String>()

var vowels = Set(["A","E","I","O","U"])
//var vowels = Set<String>(["A","E","I","O","U"])
var numbers:Set = [1,2,3]


// 集合元素个数
skillsOfA.count

var set: Set = [2,2,2,2]
set.count


// 集合是否为空
skillsOfB.isEmpty
skillsOfC.isEmpty


// 快速获得集合中的一个元素
skillsOfA.first


// 包含
skillsOfA.contains("swift")


// 遍历
for skill in skillsOfB{
    print(skill)
}


// 比较
let setA: Set = [1,2,3]
let setB: Set = [3,2,1,1,1,1]
setA == setB




