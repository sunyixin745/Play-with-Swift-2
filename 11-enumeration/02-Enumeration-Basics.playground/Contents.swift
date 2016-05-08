//: Playground - noun: a place where people can play

import UIKit


// 另外一个应该使用枚举的例子
let months = ["January","February","March","April","May","June","July","August","September","October","November","December"]

func season( month: String ) -> String{
    
    switch month{
    case "March", "April", "May":
        return "Spring"
    case "June", "July", "August":
        return "Summer"
    case "September", "October", "November":
        return "Autumn"
    case "December", "January", "February":
        return "Winter"
    default:
        return "Not valid"
    }
}

season("April")


// 定义枚举类型
enum Month{
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}

enum Month2{
    case January, February, March, April, May, June, July, August, September, October, November, December
}


// 使用枚举类型
func season( month: Month ) -> String{
    
    switch month{
    case Month.March, Month.April, Month.May:
        return "Spring"
    case Month.June, Month.July, Month.August:
        return "Summer"
    case Month.September, Month.October, Month.November:
        return "Autumn"
    case Month.December, Month.January, Month.February:
        return "Winter"
    }
}

//let month = Month.April
let month: Month = Month.April
season(month)


// 枚举类型名Month在一些情况下可以省略 - Type Inference
func season2( month: Month ) -> String{
    
    switch month{
    case .March, .April, .May:
        return "Spring"
    case .June, .July, .August:
        return "Summer"
    case .September, .October, .November:
        return "Autumn"
    case .December, .January, .February:
        return "Winter"
    }
}

//let month = Month.April
let month2: Month = .April
season2(month2)
