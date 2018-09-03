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
import RxSwift

class AddCityViewController: UIViewController, AddCityViewProtocol {
	var presenter: AddCityPresenterProtocol?
    var delegate: AddCityDelegate?
    
    var search = UISearchBar()
    var citytableView = UITableView()
    
    var cities = [City](){
        didSet{
            filerCity(text: "")
        }
    }
    
    var filterCity = [City](){
        didSet{
            DispatchQueue.main.async {
                self.citytableView.reloadData()
            }
        }
    }

	override func viewDidLoad() {
        super.viewDidLoad()
        addTableView()
        addSearchBar()
        DispatchQueue.global(qos: .default).async {
            self.presenter?.getCities()
        }
    }
    
    func addSearchBar(){
        search = UISearchBar(frame: CGRect(x: 0, y: (self.navigationController?.navigationBar.frame.height)! + 20, width: self.view.frame.width, height: 44))
        search.delegate = self
        self.view.addSubview(search)
    }
    
    func addTableView(){
        citytableView = UITableView(frame: self.view.frame)
        citytableView.contentInset = UIEdgeInsets(top: 44, left: 0, bottom: 0, right: 0)
        citytableView.delegate = self
        citytableView.dataSource = self
        self.view.addSubview(citytableView)
    }
    
    func setCities(_cities: [City]) {
        self.cities = _cities
    }
    
    func filerCity(text: String){
        filterCity = cities.filter({ (city) -> Bool in
            return (city.name?.lowercased().hasPrefix(text.lowercased()))!
        })
        if text.isEmpty{
            filterCity = cities
        }
    }
}
