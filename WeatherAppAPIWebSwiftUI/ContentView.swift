//
//  ContentView.swift
//  WeatherAppAPIWebSwiftUI
//
//  Created by Muhammat Rasid Ridho on 17/09/20.
//  Copyright © 2020 Muhammat Rasid Ridho. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    
    
    
    var body: some View {
        VStack(alignment: .center) {
            
            TextField("Masukan Nama Kota", text: self.$weatherVM.cityName) {
                self.weatherVM.search()
            }   .font(.custom("Arial", size: 40))
                .padding()
                .fixedSize()

            
            
            Text(self.weatherVM.temperature)
                .font(.custom("Arial", size: 70))
                .foregroundColor(Color.white)
                .offset(y:100)
                .padding()
                
            
        }   .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
