//
//  WeatherViewController.swift
//  Viper-Practice
//
//  Created by WU CHIH WEI on 2022/7/20.
//

import Foundation
import UIKit

class WeatherViewController: UIViewController, WeatherScenePresenterToViewProtocol {
    
    var presenter: WeatherSceneViewToPresenterProtocol!
    
    lazy var cityNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var button: UIButton = {
        let btn = UIButton()
        btn.setTitle("Hit me", for: .normal)
        btn.addTarget(self, action: #selector(tapDetailButton(_:)), for: .touchUpInside)
        btn.backgroundColor = .black
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        presenter.updateView()
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        
        view.addSubview(cityNameLabel)
        cityNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cityNameLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            cityNameLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
        
        view.addSubview(temperatureLabel)
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            temperatureLabel.topAnchor.constraint(equalTo: cityNameLabel.bottomAnchor, constant: 50),
            temperatureLabel.centerXAnchor.constraint(equalTo: cityNameLabel.centerXAnchor)
        ])
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: temperatureLabel.bottomAnchor, constant: 50),
            button.centerXAnchor.constraint(equalTo: cityNameLabel.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    func showWeather(with model: WeatherViewModel) {
        cityNameLabel.text = model.cityName
        temperatureLabel.text = model.temperature
    }
    
    func showError() {
        print("Receive error from presenter")
    }
    
    @objc func tapDetailButton(_ sender: UIButton) {
        presenter.navigateToDetailScene()
    }
}
