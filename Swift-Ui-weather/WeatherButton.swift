//
//  WeatherButton.swift
//  Swift-Ui-weather
//
//  Created by md imran on 11/12/22.
//

import SwiftUI


struct WeatherButton: View {
    
    var title: String
    var forgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 200, height: 50)
            .foregroundColor(forgroundColor)
            .background(textColor)
            .cornerRadius(10)
    }
}
