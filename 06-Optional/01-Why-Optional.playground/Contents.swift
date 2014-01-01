//: Playground - noun: a place where people can play

import UIKit

// 使用特殊值作为“无”可能产生歧义
//var errorCode = 404
//errorCode = 0


// 使用可选型
var errorCode:Int? = 404
print( errorCode )

errorCode = nil
print( errorCode )


// 可选型不能直接使用
//errorCode + 20


// Int? 和 Int 不是一种类型
let imInt = 405
errorCode = imInt
//imInt = errorCode