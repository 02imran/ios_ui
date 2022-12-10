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
            LinearGradient(gradient: Gradient(colors: [Color.blue , Color("Color")]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Cuprotino, Ca")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(Color.white)
                    .padding()
                
                VStack(spacing: 9){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    
                    Text("76°").font(.system(size: 50))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "Tue", imageView: "cloud.sun.fill", tampareture: 76)
                    WeatherDayView(dayOfWeek: "Tue", imageView: "cloud.sun.fill", tampareture: 76)
                    WeatherDayView(dayOfWeek: "Tue", imageView: "cloud.sun.fill", tampareture: 76)
                    WeatherDayView(dayOfWeek: "Tue", imageView: "cloud.sun.fill", tampareture: 76)
                    WeatherDayView(dayOfWeek: "Tue", imageView: "cloud.sun.fill", tampareture: 76)
                    
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
