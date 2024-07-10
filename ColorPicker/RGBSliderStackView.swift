//
//  RGBSliderStackView.swift
//  ColorPicker
//
//  Created by Mafalda on 7/10/24.
//

import SwiftUI

struct RGBSliderStackView: View 
{
    @Binding var color: Color
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    var body: some View
    {
        VStack
        {
            RGBSliderView(rgbSlider: .red, value: $red)
            RGBSliderView(rgbSlider: .green, value: $green)
            RGBSliderView(rgbSlider: .blue, value: $blue)
            
            Button("Set Color")
            {
                color = Color(red: red/255, green: green/255, blue: blue/255)
            }
            .primaryBackground()
        }
    }
}

#Preview {
    RGBSliderStackView(color: .constant(.black), red: .constant(50), green: .constant(50), blue: .constant(50))
        .padding()
}
