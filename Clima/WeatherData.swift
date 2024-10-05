//
//  WeatherData.swift
//  Clima
//
//  Created by Yehia Khamees on 10/5/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData : Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main : Decodable {
    let temp: Double
    let pressure: Double
}

struct Weather : Decodable {
    let description: String
    let id: Int
}
