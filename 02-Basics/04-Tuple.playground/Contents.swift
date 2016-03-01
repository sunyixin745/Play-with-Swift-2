//: Playground - noun: a place where people can play

import UIKit

var point = ( 5, 2 )
var httpResponse = ( 404 , "Not Found" )

let point2: ( Int , Int ) = ( 10 , 4 )
let httpResponse2: ( Int , String ) = ( 200 , "OK" )

let ( x , y ) = point2
x
y


let ( statusCode , statusMessage ) = httpResponse
statusCode
statusMessage

httpResponse.0
httpResponse.1

let point3 = ( x: 2 , y: 1 )
point3.x
point3.y

let point4: (x:Int , y:Int) = (3,4)
point4.x
point4.y


let loginResult = ( true , "liuyubobobo" )
let ( isLoginSuccess , _ ) = loginResult
if isLoginSuccess{
    print("Login success!")
}
else{
    print("Login failed!")
}
