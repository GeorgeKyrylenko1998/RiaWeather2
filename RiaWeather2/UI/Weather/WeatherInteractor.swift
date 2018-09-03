//
//  WeatherInteractor.swift
//  RiaWeather2
//
//  Created George Kyrylenko on 9/1/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit
import RxSwift

class WeatherInteractor: WeatherInteractorProtocol {
    weak var presenter: WeatherPresenterProtocol?
    func getWeather() -> Observable<WeatherData> {
        return TodayWeather.getCitiesWeather(cities: Defaults.getSities())
    }
}