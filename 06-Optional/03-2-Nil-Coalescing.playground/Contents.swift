//: Playground - noun: a place where people can play

import UIKit

// Nil-Coalescing
var errorMessage: String? = nil

let message: String
if let errorMessage = errorMessage{
    message = errorMessage
}
else{
    message = "No error"
}

// 使用 ??
let message2 = errorMessage ?? "No error"
