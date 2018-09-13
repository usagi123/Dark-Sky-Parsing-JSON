//
//  SupportFunctions.swift
//  JSON
//
//  Created by Mai Pham Quang Huy on 9/13/18.
//  Copyright © 2018 Mai Pham Quang Huy. All rights reserved.
//

import Foundation

class SupportFunctions {
    
    static func unixToHumanTime(time: Double) -> String {
        let date = Date(timeIntervalSince1970: time)
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.medium
        dateFormatter.dateStyle = DateFormatter.Style.medium
        return dateFormatter.string(from: date)
    }
    
    static func fahrenheitToCelsius(temperature: Double) -> Double {
        let celsiusTemperature = (temperature-32)*(5/9)
        return celsiusTemperature
    }
    
    static func createSpaceForString(input: String) -> String {
        let newString = input.replacingOccurrences(of: "+", with: " ", options: .literal, range: nil)
        return newString
    }
}
