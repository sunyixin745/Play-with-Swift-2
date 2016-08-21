//: Playground - noun: a place where people can play

import UIKit

//var objects: NSArray = [
//    CGFloat(3.1415926),
//    "imooc",
//    UIColor.blueColor(),
//    NSDate()
//]


//var objects: [AnyObject] = [
//    CGFloat(3.1415926),
//    "imooc",
//    UIColor.blueColor(),
//    NSDate()
//]
//
//objects.append( 42 )
//
//objects.append( (0, 0) )
//objects.append( { (a:Int) -> Int in
//    return a*a} )


var objects: [Any] = [
    CGFloat(3.1415926),
    "imooc",
    UIColor.blueColor(),
    NSDate()
]

objects.append( 42 )

objects.append( (0, 0) )
objects.append( { (a:Int) -> Int in
    return a*a} )
