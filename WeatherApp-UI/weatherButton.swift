//
//  weatherButton.swift
//  WeatherApp-UI
//
//  Created by LUIS GONZALEZ on 14/10/24.
//

import SwiftUI

struct WeatherButton: View{
    var buttonTitle: String
    var backGroundColor: Color
    var textColor: Color
    
    
    var body: some View{
        Text("Change Day Time")
            .frame(width: 280, height: 50)
            .background(backGroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 26, weight: .bold , design: .rounded))
            .cornerRadius(10)
    }
}
