//
//  baseUrl.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/1/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation


class baseUrl {
    static func getBaseUrl() -> String{
    #if DEBUG
        return "http://api.openweathermap.org/"
    #else
        return "http://api.openweathermap.org/" //other link
    #endif
    }
}
