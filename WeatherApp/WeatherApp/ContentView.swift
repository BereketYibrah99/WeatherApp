//
//  ContentView.swift
//  WeatherApp
//
//  Created by Bereket Yibrah  on 6/13/24.
//

import SwiftUI


struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack { 
            BackGround(isNight: isNight)
            VStack{
                CityName(cityName: "Addis Ababa: Piassa")
                TodayView(temp: "76", imag:       isNight ? "cloud.moon.fill": "cloud.sun.fill")
                HStack(spacing:9.9){
                    WeatherView(day: "Mon", imag: isNight ? "cloud.moon.fill":"cloud.sun.fill", temp: "76")
                    WeatherView(day: "Tue", imag: isNight ? "wind":"wind.snow", temp: "69")
                    WeatherView(day: "Wed", imag: isNight ? "cloud.moon.bolt.fill":"cloud.sun.bolt.fill", temp: "72")
                    WeatherView(day: "Thr", imag: isNight ? "moon.stars.fill":"cloud.sun.rain.fill", temp: "70")
                    WeatherView(day: "Fri", imag: isNight ? "cloud.moon.rain.fill":"cloud.hail.fill", temp: "71")
                    WeatherView(day: "Sat", imag: isNight ? "moon.fill":"smoke.fill", temp: "69")
                }
                Spacer()
                Button() {
                    isNight.toggle()
                }
                label:{
                    ButtonView(BackColor: .white, textColor: .blue, textSay: "Change the day time")
                    
                    
                }
               
                Spacer()
            }
            
        }
        .onAppear{
            let button = ButtonView(BackColor: .white, textColor: .blue, textSay: "Change the day time")
            print(type(of:button.body))
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherView: View {
    var day:String
    var imag:String
    var temp:String
    var body: some View {
        VStack{
            Text(day)
                .font(.system(size: 27, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imag)
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50,height: 50)
            Text(temp)
                .font(.system(size: 27, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}

struct BackGround: View {
     var isNight:Bool
    
    var body: some View {
        
        LinearGradient(colors: [isNight ? .black:.blue,isNight ? .gray:.white], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityName: View{
    var cityName:String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct TodayView: View {
    var temp:String
    var imag:String
    var body: some View {
        VStack(spacing:9){
            Image(systemName: imag)
                .renderingMode((.original))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            Text(temp)
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom,45)
    }
}


    


