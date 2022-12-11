//
//  ContentView.swift
//  Swift-Ui-weather
//
//  Created by md imran on 9/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            DayNightMode(isNight: $isNight)
            VStack{
                
                CityNameView(cityName: "Cuprotino, Ca")
                WeatherMainPart(weather: "cloud.sun.fill", tampareture: 76)
                Spacer()
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "Tue", imageView: "cloud.sun.fill", tampareture: 76)
                    WeatherDayView(dayOfWeek: "Tue", imageView: "cloud.sun.fill", tampareture: 76)
                    WeatherDayView(dayOfWeek: "Tue", imageView: "cloud.sun.fill", tampareture: 76)
                    WeatherDayView(dayOfWeek: "Tue", imageView: "cloud.sun.fill", tampareture: 76)
                    WeatherDayView(dayOfWeek: "Tue", imageView: "cloud.sun.fill", tampareture: 76)
                    
                }
                Spacer()
                Button{
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Day Time", forgroundColor: .blue, textColor: .white)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageView: String
    var tampareture: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageView)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(tampareture)°").font(.system(size: 28))
                .foregroundColor(.white)
        }
    }
}

struct DayNightMode: View {
    
    @Binding var isNight: Bool
    
    var body: some View {

        
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue , isNight ? .gray : Color("Color")]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

struct CityNameView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(Color.white)
            .padding()
    }
}

struct WeatherMainPart: View{
    
    var weather: String
    var tampareture: Int
    
    var body: some View {
        VStack(spacing: 9){
            Image(systemName: weather)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            Text("\(tampareture)°").font(.system(size: 50))
                .foregroundColor(.white)
        }
    }
}


