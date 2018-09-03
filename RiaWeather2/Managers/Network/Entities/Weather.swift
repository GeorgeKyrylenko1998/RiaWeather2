//
//  Weather.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

struct Weather: Codable {
    var id: Int?
    var main: String?
    var description: String?
    var icon: String?
}
