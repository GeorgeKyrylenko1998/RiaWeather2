//
//  WeatherData.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    var cnt: Int?
    var list: [CityWeather]?
}
