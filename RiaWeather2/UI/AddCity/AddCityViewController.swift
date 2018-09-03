//
//  AddCityViewController.swift
//  RiaWeather2
//
//  Created George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class AddCityViewController: UIViewController, AddCityViewProtocol {

    

	var presenter: AddCityPresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.getCities()
    }
    
    func setCities(cities: [City]) {
        
    }

}