//
//  SysInfo.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation


struct SysInfo: Codable{
    var type: Int?
    var id: Int?
    var message: Float?
    var country: String?
    var sunrise: Int?
    var sunset: Int?
}
