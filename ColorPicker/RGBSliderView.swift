//
//  RGBSliderView.swift
//  ColorPicker
//
//  Created by Mafalda on 7/10/24.
//

import SwiftUI

struct RGBSliderView: View 
{
    let rgbSlider: RGBSlider
    @Binding var value: Double
    
    var body: some View
    {
        VStack(spacing: 0)
        {
            HStack
            {
                Text(rgbSlider.title)
                Text(value, format: .number.precision(.fractionLength(1)))
            }
            
            Slider(value: $value, in: 0...255)
                .tint(rgbSlider.tintColor)
        }
    }
}

#Preview {
    RGBSliderView(rgbSlider: .red, value: .constant(50))
        .padding()
}
