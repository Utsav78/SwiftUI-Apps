//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Utsav Budathoki on 5/4/2024.
//

import SwiftUI

struct WeatherButton: View {
    var buttonTitle: String
    var backgroundColor: Color
    var textColor: Color
    var body: some View {
        Text(buttonTitle)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

