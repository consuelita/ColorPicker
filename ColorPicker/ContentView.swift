//
//  ContentView.swift
//  ColorPicker
//
//  Created by Mafalda on 7/3/24.
//

import SwiftUI

struct ContentView: View 
{
    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
    @State private var activeColor = Color.gray
    
    var body: some View 
    {
        let _ = Self._printChanges()
        let _ = print("red value = \(redValue)")
        VStack
        {
            RoundedRectangle(cornerRadius: 24.0)
                .frame(width: 300, height: 250)
                .foregroundStyle(Color(red:redValue / 255.0, green: greenValue / 255.0, blue: blueValue / 255.0))
                .padding(.bottom, 24)
            
            RGBSliderView(rgbSlider: .red, value: $redValue)
            RGBSliderView(rgbSlider: .green, value: $greenValue)
            RGBSliderView(rgbSlider: .blue, value: $blueValue)
            
            Button("Set Color") {
                activeColor = Color(red:redValue / 255.0, green: greenValue / 255.0, blue: blueValue / 255.0)
            }
            .primaryBackground()
            
        }
        .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
}
