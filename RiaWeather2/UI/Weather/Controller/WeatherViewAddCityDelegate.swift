//
//  WeatherViewAddCityDelegate.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import UIKit

extension WeatherViewController: AddCityDelegate{
    func setCity(id: String) {
        var cities = Defaults.getSities()
        cities.append(id)
        Defaults.setCity(city: cities)
        self.presenter?.getWeather()
    }
}
