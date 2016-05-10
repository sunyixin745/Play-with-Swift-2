//: Playground - noun: a place where people can play

import UIKit


struct Location{
    
    let latitude: Double
    let longitude: Double
    var placeName: String?
    
    init(latitude: Double, longitude: Double, placeName: String){
        
        self.latitude = latitude
        self.longitude = longitude
        self.placeName = placeName
    }
    
    init(latitude: Double, longitude: Double){
        
        self.latitude = latitude
        self.longitude = longitude
    }
    
    init(coordinateString: String){
        
        let commaPos = coordinateString.rangeOfString(",")!.startIndex
        let firstElement = coordinateString.substringToIndex(commaPos)
        let secondElement = coordinateString.substringFromIndex(commaPos.successor())
        self.latitude = Double(firstElement)!
        self.longitude = Double(secondElement)!
    }
    
    func printLocation(){
        print("The Location is \(self.latitude),\(self.longitude)")
        if let placeName = self.placeName{
            print(placeName)
        }
    }
    
    func isNorth() -> Bool{
        return self.latitude > 0
    }
    
    func isSouth() -> Bool{
        //可以调用自己的函数，也可以加上self
        return !self.isNorth()
    }
    
    // 注意，给出两个地点的经纬度，计算两点之间的距离不是这么计算！
    // 这里只做演示用
    func distanceTo( location: Location ) -> Double{
        
        return sqrt(pow(self.latitude - location.latitude,2) + pow(self.longitude - location.latitude,2))
        
    }
}


let appleHeadQuarterLocation = Location(latitude: 37.3230, longitude: -122.0322, placeName:"Apple Head Quarter")
appleHeadQuarterLocation.printLocation()
appleHeadQuarterLocation.isNorth()
appleHeadQuarterLocation.isSouth()


