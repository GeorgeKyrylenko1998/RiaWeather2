//
//  Props.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

class Props{
    static func addProps(url: String, props : [String:String]) -> String{
        var propsString = "?"
        for prop in props{
            propsString+="\(prop.key)=\(prop.value)&"
        }
        let urlWithPrtops = "\(url)\(propsString)units=metric"
        return urlWithPrtops
    }
}
