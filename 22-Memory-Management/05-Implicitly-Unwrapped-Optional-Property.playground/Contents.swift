//: Playground - noun: a place where people can play

import UIKit

class Country{
    
    let name: String
    //let capital: String
    var capital: City!
    
    init(countryName: String, capitalName: String){
        self.name = countryName
        //self.capital = capitalName
        self.capital = City(cityName: capitalName, country: self)
    }
    
    deinit{
        print("Country",name,"is being deinitialized!")
    }
}

class City{
    
    let name: String
    unowned let country: Country
    
    init(cityName: String, country: Country){
        self.name = cityName
        self.country = country
    }
    
    deinit{
        print("City",name,"is being deinitialized!")
    }
}

var china: Country? = Country(countryName: "China", capitalName: "Beijing")



