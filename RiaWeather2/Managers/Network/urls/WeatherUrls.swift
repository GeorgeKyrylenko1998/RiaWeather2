//
//  CItiesUrls.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/2/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

class WeatherUrls{
    
    static func getCities(cities: [String]) -> URL{
        let base = baseUrl.getBaseUrl()
        var idGroup = ""
        for city in cities{
            idGroup += "\(city),"
        }
        idGroup.removeLast()
        let url = "\(base)data/2.5/group"
        
        let urlWithProps = Props.addProps(url: url, props: ["id":idGroup])
        
        return URL(string: urlWithProps)!
    }
}
