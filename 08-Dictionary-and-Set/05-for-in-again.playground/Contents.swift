//: Playground - noun: a place where people can play

import UIKit

// 对Range使用for-in
for number in 1..<10{
    number
}


// 对String.characters使用for-in
for c in "Hello".characters{
    c
}


// 对Array使用for-in
let vowels = ["a","e","i","o","u"]
for vowel in vowels{
    vowel
}

for (i,vowel) in vowels.enumerate(){
    i
    vowel
}


// 对Dictionary使用for-in
let dict = [1:"A", 2:"B", 3:"C"]
for key in dict.keys{
    key
}

for value in dict.values{
    value
}

for (key,value) in dict{
    key
    value
}


// 对Set使用for-in
let set = Set(vowels)
for vowel in set{
    vowel
}


// 奇奇怪怪的类型？
"Hello".characters
vowels.enumerate()
dict.keys

// 可迭代
