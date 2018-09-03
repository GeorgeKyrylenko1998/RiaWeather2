//
//  BaseRequest.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import RxSwift


class BaseRequest{
    static func urlRequest(url: URL,_ body: Data?,_ header: [String: String]?, method: NetMeth) -> Observable<Data>{
        print("URL: ", url)
        return Observable<Data>.create({ (observer) -> Disposable in
            let requset = NSMutableURLRequest(url: url)
            requset.httpBody = body
            requset.httpMethod = method.rawValue
            requset.addValue("application/json",forHTTPHeaderField: "Content-Type")
            requset.addValue("67c358cacae110f1e891f0e2f532aa6e",forHTTPHeaderField: "x-api-key")
            
            if header != nil{
                for value in header!{
                    requset.addValue(value.value, forHTTPHeaderField: value.key)
                }
            }
            URLSession.shared.dataTask(with: requset as URLRequest, completionHandler: { (data, response, error) in
                if error != nil{
                    print("ERROR",error?.localizedDescription)
                    observer.onError(error!)
                    return
                }
                observer.onNext(data!)
            }).resume()
            return Disposables.create()
        })
    }
    
    enum NetMeth: String{
        case POST, GET, PUT
    }
}
