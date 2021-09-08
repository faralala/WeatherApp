//
//  Weather.swift
//  WeatherApp
//
//  Created by Миша Черкасов on 02.09.2021.
//

import Foundation

public struct Weather {
    let city: String
    let temperature: String
    let description: String
    let iconName: String
    init(response: APIResponse) {
        city = response.name
        temperature = "\(Int(response.main.temp))"
        description = response.weather.first?.description ?? ""
        iconName = response.weather.first?.description ?? ""
        
    }
}
