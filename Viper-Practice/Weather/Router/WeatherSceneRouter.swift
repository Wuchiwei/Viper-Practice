//
//  WeatherSceneRouter.swift
//  Viper-Practice
//
//  Created by WU CHIH WEI on 2022/7/20.
//

import Foundation
import UIKit

protocol WeatherDetailSceneBuilder {
    static func weatherDetailScene() -> UIViewController
}

class WeatherSceneRouter: WeatherScenePresenterToRouterProtocol {
    
    let builder: WeatherDetailSceneBuilder.Type
    
    weak var view: UIViewController?
    
    init(builder: WeatherDetailSceneBuilder.Type) {
        self.builder = builder
    }
    
    func routeToDetailWeatherPage() {
        let viewController = builder.weatherDetailScene()
        view?.show(viewController, sender: nil)
    }
}
