//
//  WeatherModel.swift
//  Viper-Practice
//
//  Created by WU CHIH WEI on 2022/7/20.
//

import Foundation

struct WeatherModel {
    let cityName: String
    let temperature: Double
    
    static func generateModelWith(_ model: Weather) -> WeatherModel {
        WeatherModel(cityName: model.cityName, temperature: model.temperature)
    }
}
