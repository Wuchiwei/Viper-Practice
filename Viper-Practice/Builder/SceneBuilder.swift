//
//  SceneFactory.swift
//  Viper-Practice
//
//  Created by WU CHIH WEI on 2022/7/20.
//

import Foundation
import UIKit

class SceneBuilder {
    
    static func weatherScene() -> UIViewController {
        
        let viewController = WeatherViewController()
        let presenter = WeatherScenePresenter()
        let weatherProvider = WeatherService()
        let interactor = WeatherSceneInteractor(weatherProvider: weatherProvider)
        let router = WeatherSceneRouter(builder: self)
        
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.interactor = interactor
        presenter.router = router
        
        router.view = viewController
        
        return viewController
    }
}

extension SceneBuilder: WeatherDetailSceneBuilder {
    
    static func weatherDetailScene() -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .gray
        return viewController
    }
}
