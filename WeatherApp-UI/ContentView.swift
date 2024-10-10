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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("CDMX")
            }
        }
    }
}

#Preview {
    ContentView()
}
