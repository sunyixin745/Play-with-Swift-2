//: Playground - noun: a place where people can play

import UIKit


assert(1 > 0)
assert(1 > 0, "assert")

if 1 > 0{
    print("1 > 0")
}
else{
    assertionFailure("assertionFailure")
}

precondition(1 > 0)
precondition(1 > 0, "precondition")

if 1 > 0{
    print("1 > 0")
}
else{
    fatalError("fatalError")
}




