//
//  WeatherTableViewDelegate.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import UIKit

extension WeatherViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weathers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell") as! WeatherCell
        cell.cityLbl.text = weathers[indexPath.row].name
        cell.temperatureLbl.text = String(weathers[indexPath.row].main?.temp ?? 0)
        cell.presureLbl.text = String(weathers[indexPath.row].main?.pressure ?? 0)
        cell.humidityLbl.text = String(weathers[indexPath.row].main?.humidity ?? 0)
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let remove = UITableViewRowAction(style: .destructive, title: "Remove") { action, index in
            self.weathers.remove(at: indexPath.row)
        }
        return [remove]
    }
}