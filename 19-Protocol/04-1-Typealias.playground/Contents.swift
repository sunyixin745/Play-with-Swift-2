//: Playground - noun: a place where people can play

import UIKit


extension Double{
    
    var km: Double{ return self * 1000.0 }
    var m: Double{ return self }
    var cm: Double{ return self / 100 }
    var ft: Double{ return self / 3.28084 }
}

typealias Length = Double

let runningDistance: Length = 3.54.km
runningDistance


typealias AudioSample = UInt16


