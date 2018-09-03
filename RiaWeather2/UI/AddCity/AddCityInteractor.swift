//
//  AddCityInteractor.swift
//  RiaWeather2
//
//  Created George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class AddCityInteractor: AddCityInteractorProtocol {
    weak var presenter: AddCityPresenterProtocol?
    func getCities() -> [City] {
        if let path = Bundle.main.path(forResource: "cityList", ofType: "json")
        {
            
            if let jsonData = try? Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            {
              let cities = try? JSONDecoder().decode([City].self, from: jsonData)
                return cities ?? []
            }
        }
        
        return []
    }
}
