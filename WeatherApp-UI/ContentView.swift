//
//  ContentView.swift
//  WeatherApp-UI
//
//  Created by LUIS GONZALEZ on 09/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("CDMX, MEXICO").font(.system(size: 32,
                                                  weight: .medium,
                                                  design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill") // imagen + modifiers
                        .renderingMode(.original) //mantener el color original
                        .resizable() //cambiar el tamanio original
                        .aspectRatio(contentMode: .fit) //ajustar al frame
                        .frame(width: 180, height: 180) //definir tamanio de frame
                    Text("24°")
                        .font(.system(size: 70, weight: .bold))
                        .foregroundColor(.white)
                }
                HStack(spacing: 4){
                    VStack(spacing: 4){
                        Text("MON").font(.system(size: 16,
                                                 weight: .medium,
                                                 design: .default))
                        .foregroundColor(.white)
                        .padding()
                        VStack(spacing:4) {
                            Image(systemName: "cloud.sun.rain.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("15°").font(.system(size: 20,
                                                     weight: .medium,
                                                     design: .default))
                            .foregroundColor(.white)
                            .padding()
                        }
                    }
                }
                Spacer()
            }
         
        }
    }
}

#Preview {
    ContentView()
}
