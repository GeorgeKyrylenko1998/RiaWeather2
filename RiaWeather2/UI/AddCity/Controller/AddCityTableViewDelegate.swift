//
//  AddCityTableViewDelegate.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import UIKit

extension AddCityViewController:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterCity.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let lbl = UILabel()
        lbl.text = filterCity[indexPath.row].name
        lbl.sizeToFit()
        lbl.center = cell.center
        cell.addSubview(lbl)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.setCity(id:String(filterCity[indexPath.row].id ?? 0))
        self.navigationController?.popViewController(animated: true)
    }
}
