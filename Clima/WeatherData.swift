//
//  WeatherData.swift
//  Clima
//
//  Created by Yehia Khamees on 10/5/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData : Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main : Codable {
    let temp: Double
    let pressure: Double
}

struct Weather : Codable {
    let description: String
    let id: Int
}
