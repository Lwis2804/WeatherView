//
//  ContentView.swift
//  WeatherApp-UI
//
//  Created by LUIS GONZALEZ on 09/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNigth = false // boolean para cambiar el estado de ls vista
    

    var body: some View {
        ZStack {
            BackgroundView(topColor: isNigth ? .black :  .blue,
                           bottomColor: isNigth ? .gray : Color("lightBlue"))
            VStack{
                cityName(cityName: "CDMX")
                mainWeatherStatusView(imageName: "cloud.sun.fill",
                                      temperature: 22)
                
                HStack(spacing: 6){
                    WeatherDayView(dayOfTheWeek: "MON",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 16)
                    WeatherDayView(dayOfTheWeek: "TUE",
                                   imageName: "sun.horizon.fill",
                                   temperature: 23)
                    WeatherDayView(dayOfTheWeek: "WEN",
                                   imageName: "sun.max.fill",
                                   temperature: 30)
                    WeatherDayView(dayOfTheWeek: "THU",
                                   imageName: "wind",
                                   temperature: 10)
                    WeatherDayView(dayOfTheWeek: "FRI",
                                   imageName: "snowflake",
                                   temperature: 2)
                }
                Spacer()
                
                Button{
                    isNigth.toggle()
                } label: {
                    WeatherButton(buttonTitle: "Change Day Time",
                                  backGroundColor: .white,
                                  textColor: .blue)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


struct WeatherDayView: View {
    
    var dayOfTheWeek :String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 4){
            Text(dayOfTheWeek).font(.system(size: 16, weight: .medium,design: .default))
                .foregroundColor(.white)
                .padding()
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°").font(.system(size: 28,weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomLeading)
        .edgesIgnoringSafeArea(.all)
    }
 }

struct cityName: View {
    var cityName : String
    var body: some View {
        Text(cityName).font(.system(size: 32,
                                          weight: .medium,
                                          design: .default))
        .foregroundColor(.white)
        .padding()
    }
}

struct mainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack(spacing: 8){
            Image(systemName: imageName) // imagen + modifiers
                .renderingMode(.original) //mantener el color original
                .resizable() //cambiar el tamanio original
                .aspectRatio(contentMode: .fit) //ajustar al frame
                .frame(width: 180, height: 180) //definir tamanio de frame
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .bold))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40) //Marco del Vstack
    }
}



