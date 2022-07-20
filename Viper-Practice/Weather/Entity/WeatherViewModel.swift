//
//  WeatherViewModel.swift
//  Viper-Practice
//
//  Created by WU CHIH WEI on 2022/7/20.
//

import Foundation

class WeatherViewModel {
    let cityName: String
    let temperature: String
    
    init(cityName: String, temperature: String) {
        self.cityName = cityName
        self.temperature = temperature
    }
}
