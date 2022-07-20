//
//  WeatherSceneInteractor.swift
//  Viper-Practice
//
//  Created by WU CHIH WEI on 2022/7/20.
//

import Foundation

protocol WeatherProvider {
    func fetchWeather(_ completion: @escaping (Weather) -> Void)
}

class WeatherSceneInteractor: WeatherScenePresenterToInteractorProtocol {
    
    let weatherProvider: WeatherProvider
    
    init(weatherProvider: WeatherProvider) {
        self.weatherProvider = weatherProvider
    }
    
    func fetchWeather(_ completionHandler: @escaping (WeatherModel) -> Void) {
        
        weatherProvider.fetchWeather{ weather in
            let weatherModel = WeatherModel.generateModelWith(weather)
            completionHandler(weatherModel)
        }
    }
}
