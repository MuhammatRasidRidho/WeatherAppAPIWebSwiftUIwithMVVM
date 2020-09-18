//
//  Weather.swift
//  WeatherAppAPIWebSwiftUI
//
//  Created by Muhammat Rasid Ridho on 17/09/20.
//  Copyright © 2020 Muhammat Rasid Ridho. All rights reserved.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
    
}

struct Weather: Decodable {
    var temp : Double?
    var humidity : Double?
}

