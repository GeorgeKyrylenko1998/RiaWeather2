//
//  WeatherDetailViewController.swift
//  RiaWeather2
//
//  Created George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class WeatherDetailViewController: UIViewController, WeatherDetailViewProtocol {
    
    var presenter: WeatherDetailPresenterProtocol?
    
    var cityId: String?
    var cityWeather: CityWeather?
    var dailyWeather: WeatherData?{
        didSet{
            DispatchQueue.main.async {
                self.collectionWeathers.reloadData()
            }
        }
    }
    @IBOutlet weak var collectionWeathers: UICollectionView!
    
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var temperatureLbl: UILabel!
    @IBOutlet weak var pressureLbl: UILabel!
    @IBOutlet weak var humidityLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WeatherDetailRouter.createModule(view: self)
        setBaseInfo()
        self.presenter?.getWeather(id: cityId ?? "")
    }
    
    func setBaseInfo(){
        cityLbl.text = cityWeather?.name
        temperatureLbl.text = String(cityWeather?.main?.temp ?? 0)
        pressureLbl.text = String(cityWeather?.main?.pressure ?? 0)
        humidityLbl.text = String(cityWeather?.main?.humidity ?? 0)
    }
    
    @IBAction func previusAction(_ sender: Any) {
        if collectionWeathers.contentOffset.x > 0{
            UIView.animate(withDuration: 0.3) {
                self.collectionWeathers.contentOffset.x -= self.collectionWeathers.frame.width
            }
        }
    }
    
    @IBAction func nextAction(_ sender: Any) {
        if collectionWeathers.contentOffset.x + collectionWeathers.frame.width < collectionWeathers.contentSize.width{
            UIView.animate(withDuration: 0.3) {
                self.collectionWeathers.contentOffset.x += self.collectionWeathers.frame.width
            }
        }
    }
    
    func setWeather(weather: WeatherData) {
        dailyWeather = weather
    }
}
