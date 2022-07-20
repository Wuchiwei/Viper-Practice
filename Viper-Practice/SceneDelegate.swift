//
//  SceneDelegate.swift
//  Viper-Practice
//
//  Created by WU CHIH WEI on 2022/7/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
    
        window.rootViewController = UINavigationController(rootViewController: SceneBuilder.weatherScene())
        
        self.window = window
        window.makeKeyAndVisible()
    }
}

