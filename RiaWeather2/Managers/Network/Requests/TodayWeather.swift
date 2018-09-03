//
//  TodayWeather.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import RxSwift


class TodayWeather{
    static func getCitiesWeather(cities: [String]) -> Observable<WeatherData>{
        return Observable<WeatherData>.create({ (weather) -> Disposable in
            BaseRequest.urlRequest(url: WeatherUrls.getCities(cities: cities), nil, nil, method: .GET).subscribe(onNext: { (data) in
                let weatherValue = try? JSONDecoder().decode(WeatherData.self, from: data)
                weather.onNext(weatherValue ?? WeatherData())
            }, onError: { (error) in
                weather.onError(error)
            }, onCompleted: {
                
            }, onDisposed: {
                
            })
            return Disposables.create()
        })
    }
}
