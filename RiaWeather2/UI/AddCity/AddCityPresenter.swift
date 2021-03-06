//
//  AddCityPresenter.swift
//  RiaWeather2
//
//  Created George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class AddCityPresenter: AddCityPresenterProtocol {

    

    weak private var view: AddCityViewProtocol?
    var interactor: AddCityInteractorProtocol?
    private let router: AddCityWireframeProtocol

    init(interface: AddCityViewProtocol, interactor: AddCityInteractorProtocol?, router: AddCityWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
    
    func getCities() {
        let cities = interactor?.getCities()
        self.view?.setCities(_cities: cities!)
    }

}
