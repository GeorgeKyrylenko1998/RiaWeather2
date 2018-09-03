//
//  CityWeather.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

struct CityWeather: Codable {
    var coord: Coord?
    var sys: SysInfo?
    var weather: [Weather]?
    var main: MainInfo?
    var visibility: Int?
    var wind: Wind?
    var clouds: Clouds?
    var dt: Int?
    var id: Int?
    var name: String?
    var dt_txt: String?
}
