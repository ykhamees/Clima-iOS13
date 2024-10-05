//
//  WeatherManager.swift
//  Clima
//
//  Created by Yehia Khamees on 10/5/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherUrl = "https://api.openweathermap.org/data/2.5/weather?appid=####&units=metric"
    
    func fetchWeather(cityName: String) {
        let url = "\(weatherUrl)&q=\(cityName)"
        
        performRequest(urlString: url)
    }
    
    func performRequest(urlString: String) {
        // Create a URL
        if let url = URL(string: urlString) {
            // Create URL session
            let session = URLSession(configuration: .default)
            
            // Give the session a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            // Start the task
            task.resume()
        }
    }
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
}
