//
//  WeatherService.swift
//  Viper-Practice
//
//  Created by WU CHIH WEI on 2022/7/20.
//

import Foundation

struct WeatherService: WeatherProvider {
    
    func fetchWeather(_ completion: @escaping (Weather) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            let weather = Weather(cityName: "Kaohsiung", temperature: 50)
            completion(weather)
        })
    }
}
