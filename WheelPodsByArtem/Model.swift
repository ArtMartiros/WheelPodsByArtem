//
//  Model.swift
//  WheeleDemo
//
//  Created by Artem Martirosyan on 11/07/2019.
//  Copyright © 2019 Artem Martirosyan. All rights reserved.
//

import Foundation

class Model {
    private let defaultSession = URLSession(configuration: .default)
    private var dataTask: URLSessionDataTask?
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        dataTask?.cancel()
        dataTask = defaultSession.dataTask(with: url, completionHandler: completion)
        dataTask?.resume()
    }
    
    func cancel() {
        dataTask?.cancel()
    }
}
