//
//  ContentView.swift
//  Swift-Ui-weather
//
//  Created by md imran on 9/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            DayNightMode(topColor: .blue, bottomColor: Color("Color"))
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
                    print("Tapped")
                }label: {
                    
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
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {

        
        LinearGradient(gradient: Gradient(colors: [topColor , bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
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
