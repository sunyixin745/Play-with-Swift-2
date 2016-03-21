//: Playground - noun: a place where people can play

import UIKit

func runningMetersWithMetersPerDay( metersPerDay: Int) -> () -> Int {
    
    var totalMeters = 0
    return {
        totalMeters += metersPerDay
        return totalMeters
    }
}


var planA = runningMetersWithMetersPerDay(2000)
planA()
planA()
planA()


var planB = runningMetersWithMetersPerDay(5000)
planB()
planB()
planB()


var superPlan = planB
superPlan()

planB()


