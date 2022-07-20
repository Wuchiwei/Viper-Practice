//
//  WeatherProtocol.swift
//  Viper-Practice
//
//  Created by WU CHIH WEI on 2022/7/20.
//

import Foundation

protocol WeatherSceneViewToPresenterProtocol: AnyObject {
    func updateView()
    func navigateToDetailScene()
}

protocol WeatherScenePresenterToViewProtocol: AnyObject {
    func showWeather(with model: WeatherViewModel)
    func showError()
}

protocol WeatherScenePresenterToInteractorProtocol: AnyObject {
    func fetchWeather(_ completionHandler: @escaping (WeatherModel) -> Void)
}

protocol WeatherSceneInteractorToPresenterProtocol: AnyObject {
    
}

protocol WeatherScenePresenterToRouterProtocol: AnyObject {
    func routeToDetailWeatherPage()
}
