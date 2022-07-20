//
//  WeatherScenePresenter.swift
//  Viper-Practice
//
//  Created by WU CHIH WEI on 2022/7/20.
//

import Foundation

class WeatherScenePresenter: WeatherSceneViewToPresenterProtocol {
    
    weak var view: WeatherScenePresenterToViewProtocol?
    
    var interactor: WeatherScenePresenterToInteractorProtocol!
    
    var router: WeatherScenePresenterToRouterProtocol!
    
    func updateView() {
        interactor.fetchWeather{ [weak self] model in
            self?.view?.showWeather(
                with: WeatherViewModel(
                    cityName: model.cityName,
                    temperature: String(model.temperature)
                )
            )
        }
    }
    
    func navigateToDetailScene() {
        router.routeToDetailWeatherPage()
    }
}
