//
//  WeatherService.swift
//  WeatherAppAPIWebSwiftUI
//
//  Created by Muhammat Rasid Ridho on 17/09/20.
//  Copyright © 2020 Muhammat Rasid Ridho. All rights reserved.
//

import Foundation

class WeatherService{
    func getWeather(city: String, completion: @escaping (Weather?) -> ()) {
        guard let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(city)&APPID=0b002257c66e0e20639e2eeb3cd2d30a") else {
            completion(nil)
            return
            
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
            completion(nil)
            return
            }
            
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            
            if let weatherResponse = weatherResponse {
                let weather = weatherResponse.main
                completion(weather)
            } else {
                completion(nil)
                
            }
            
            } . resume()
        
    }
    
}
