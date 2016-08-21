//: Playground - noun: a place where people can play

import UIKit

class smartAirConditioner{
    
    private var temperature: Int = 26
    var temperatureChange: ((Int) -> ())!
    
//    init(){
//        temperatureChange = { [weak self](newTemperature) in
//            if abs(newTemperature - self!.temperature) >= 10{
//                print("It's not healthy to do it!")
//            }
//            else{
//                self!.temperature = newTemperature
//            }
//        }
//    }
    
    init(){
        temperatureChange = { [unowned self](newTemperature) in
            if abs(newTemperature - self.temperature) >= 10{
                print("It's not healthy to do it!")
            }
            else{
                self.temperature = newTemperature
            }
        }
    }
    
    deinit{
        print("Smart Air-conditioner is being deinitialized!")
    }
}

var airCon: smartAirConditioner? = smartAirConditioner()
airCon?.temperature
airCon?.temperatureChange(100)
airCon = nil



