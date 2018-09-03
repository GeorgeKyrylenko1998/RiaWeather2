//
//  MainInfo.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

struct MainInfo: Codable {
    var temp: Double?
    var pressure: Double?
    var humidity: Double?
    var temp_min: Double?
    var temp_max: Double?
}
