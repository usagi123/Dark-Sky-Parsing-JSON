//
//  CurrentWeather.swift
//  JSON
//
//  Created by Mai Pham Quang Huy on 9/13/18.
//  Copyright © 2018 Mai Pham Quang Huy. All rights reserved.
//

import Foundation

class CurrentWeather {
    let time: Double?
    let temperature: Double?
    let humidity: Int?
    let summary: String?
    let icon: String?
    
    struct WeatherKeys {
        static let time = "time"
        static let temperature = "temperature"
        static let humidity = "humidity"
        static let summary = "summary"
        static let icon = "icon"
    }
    
    init(weatherDictionary: [String:Any]) {
        time = weatherDictionary[WeatherKeys.time] as? Double
        temperature = weatherDictionary[WeatherKeys.temperature] as? Double
        if let humidityDouble = weatherDictionary[WeatherKeys.humidity] as? Double {
            humidity = Int(humidityDouble*100)
        } else {
            humidity = nil
        }
        summary = weatherDictionary[WeatherKeys.summary] as? String
        icon = weatherDictionary[WeatherKeys.icon] as? String
        
    }
}
