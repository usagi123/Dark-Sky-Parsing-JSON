//
//  ViewController.swift
//  JSON
//
//  Created by Mai Pham Quang Huy on 9/9/18.
//  Copyright © 2018 Mai Pham Quang Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let forecastAPIKey = "9b43add4303def8ddb395cc7fec44be7"
    let coordinate: (lat: Double, long: Double) = (33, -122)
    var forecastService: ForecastService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*GET HOURLY WEATHER*/
//        HourlyWeather.forecast(withKey: forecastAPIKey, withLocation: "\(self.coordinate.lat),\(self.coordinate.long)") { (results:[HourlyWeather]) in
//            print("HOURLY WEATHER")
//            //access data
//            for result in results {
//                print(SupportFunctions.unixToHumanTime(time: result.time))
//                print(String(format: "%.0f", SupportFunctions.fahrenheitToCelsius(temperature: result.temperature)) + "˚C")
//                print("\(result.icon)\n")
//            }
//        }
        
        /*GET DAILY WEATHER*/
        DailyWeather.forecast(withKey: forecastAPIKey, withLocation: "\(self.coordinate.lat),\(self.coordinate.long)") { (results:[DailyWeather]) in
            print("DAILY WEATHER")
            //access data
            //first way
            
            for result in results {
                print(SupportFunctions.unixToHumanTime(time: result.time))
                print(String(format: "%.0f", SupportFunctions.fahrenheitToCelsius(temperature: result.temperature)) + "˚C")
                print("\(result.icon)\n")
            }
            
            //second way
//            for i in 0..<results.count {
//                print(results[i])
//            }
            
//            let oneDayArray = results[0]
        }
        
//        /*GET CURRENT WEATHER*/
//        self.forecastService = ForecastService(APIKey: self.forecastAPIKey)
//        self.forecastService.getCurrentWeather(latitude: self.coordinate.lat, longitude: self.coordinate.long, completion: { (currentWeather) in
//            if let currentWeather = currentWeather {
//                print("CURRENT WEATHER")
//                DispatchQueue.main.async {
//                    if let temperature = currentWeather.temperature {
//                        print(String(format: "%.0f", SupportFunctions.fahrenheitToCelsius(temperature: temperature)) + "˚C")
//                    } else {
//                        print("--")
//                    }
//
//                    if let time = currentWeather.time {
//                        print(SupportFunctions.unixToHumanTime(time: time))
//                    } else {
//                        print("--")
//                    }
//
//                    if let humidity = currentWeather.humidity {
//                        print(humidity)
//                    } else {
//                        print("--")
//                    }
//
//                    if let icon = currentWeather.icon {
//                        print(icon)
//                    } else {
//                        print("--")
//                    }
//                    if let summary = currentWeather.summary {
//                        print(summary)
//                    } else {
//                        print("--")
//                    }
//                }
//            }
//        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

