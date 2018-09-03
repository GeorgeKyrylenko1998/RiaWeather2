//
//  UserDefaults.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

class Defaults{
    static let isLogin = "isFirst"
    static let cities = "cities"
    
    
    static func isFirst() -> Bool{
        if UserDefaults.standard.object(forKey: isLogin) == nil{
            return true
        }
        return false
    }
    
    static func setIsFirst(){
        UserDefaults.standard.set(false, forKey: isLogin)
    }
    
    static func getSities() -> [String]{
        return UserDefaults.standard.object(forKey: cities) as! [String]
    }
    
    static func setCity(city: [String]){
        UserDefaults.standard.set(city, forKey: cities)
    }
}
